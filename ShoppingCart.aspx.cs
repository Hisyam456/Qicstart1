using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace Qicstart1
{
    public partial class ShoppingCart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["sFlag"] != "T")
            {
                lblShopping.Text = "Please Login First To View Your Shopping Cart";
                DetailsView1.Visible = false;
                DetailsView2.Visible = false;
                GridView1.Visible = false;
                paymentMode.Visible = false;
                btnCheckout.Visible = false;
            }
            else
            {
                int intOrderID = (int)Session["sOrderNo"];
                //Check to see if items have been ordered
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
                string strSQL = "SELECT ProductID FROM OrderDetail WHERE OrderID=" + intOrderID;
                SqlCommand con = new SqlCommand(strSQL, connection);
                connection.Open();
                SqlDataReader rdr = con.ExecuteReader();
                Boolean booRows = rdr.HasRows;
                if (booRows)
                {
                    lblShopping.Text = "Your Shopping Cart";
                    DetailsView1.Visible = true;
                    DetailsView2.Visible = true;
                    GridView1.Visible = true;
                    paymentMode.Visible = true;
                    btnCheckout.Visible = true;
                }
                else
                {
                    lblShopping.Text = "Your Shopping Cart Is Empty";
                    DetailsView1.Visible = false;
                    DetailsView2.Visible = false;
                    GridView1.Visible = false;
                    paymentMode.Visible = false;
                    btnCheckout.Visible = false;
                }
                connection.Close();
            }

        }

        private void SendMail()
        {
            DetailsViewRow row2 = DetailsView2.Rows[2];
            string pdtPrice = row2.Cells[1].Text;

            GridViewRow row1 = GridView1.Rows[0];
            string itemName= row1.Cells[2].Text;

            int orderNo = (int)Session["sOrderNo"];
            string todayDate = DateTime.Now.ToShortDateString();
            string custEmail = (string)Session["sEmail"];
            string filename = Server.MapPath("~/invoice.html");
            string mailbody = System.IO.File.ReadAllText(filename);
            mailbody = mailbody.Replace("##ORDERID##", orderNo.ToString());
            mailbody = mailbody.Replace("##DATE##", todayDate);
            mailbody = mailbody.Replace("##CUSTNAME##", (string)Session["sName"]);
            mailbody = mailbody.Replace("##CUSTADDRESS##", (string)Session["sAddress"]);
            mailbody = mailbody.Replace("##ITEMNAME##", itemName);
            mailbody = mailbody.Replace("##DESC##", "Template From Qicstart.com");
            mailbody = mailbody.Replace("##TOTAL##", pdtPrice.ToString());
            string to = custEmail;
            string from = "appmaker82@gmail.com";
            MailMessage message = new MailMessage(from, to);
            message.Subject = "Your Order Invoice";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("appmaker82@gmail.com", "klepts456");
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential;
            client.Send(message);
            try
            {
                string ErrorMessage = "Invoice Email Sent Succesfully!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            }
            catch
            {
                string ErrorMessage = "Email Sent UnSuccesfully! Please Try Again!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            }
        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            DetailsViewRow row2 = DetailsView2.Rows[2];
            string pdtPrice = row2.Cells[1].Text;
            //string Paypal_A = pdtPrice.Substring(5);
            decimal Paypal = Math.Round(Convert.ToDecimal(pdtPrice), 2);
            txtTotal.Text = pdtPrice; 

           

            if (ddlPayMode.SelectedValue == "Paypal")
            {
                int Paypal_Order_No = (int)Session["sOrderNo"];
                string Redirect = "";

                Redirect += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=W3GTFWXNGWEX2";
                Redirect += "&item_name=" + Session["sName"].ToString() + "'s Purchase from Qcistart Pte Ltd (Trans ID:" + Paypal_Order_No.ToString() + ")";
                Redirect += "&amount=" + Paypal;
                Redirect += "&currency_code=SGD";
                Redirect += "&return=" + "http://localhost:60679/Confirmation.aspx";
                Redirect += "&cancel_return=" + "http://http://localhost:60679/ShoppingCart.aspx";
                Redirect += "&custom=" + Paypal_Order_No.ToString();

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
                connection.Open();
                string strSql = "UPDATE OrderSummary SET TotalPrice = @price, oOrderStatus = @status WHERE iOrderID = @OrderNo";
                SqlCommand cmd = new SqlCommand(strSql, connection);
                cmd.Parameters.AddWithValue("@OrderNo", (int)Session["sOrderNo"]);
                cmd.Parameters.AddWithValue("@status", "Checkout");
                cmd.Parameters.AddWithValue("@price", Paypal.ToString());
                cmd.ExecuteNonQuery();

                string insert = "INSERT INTO Projects(OrderID, mPayMode, mTotalAmt) VALUES (@orderId, @paymode, @total)";
                SqlCommand strInsert = new SqlCommand(insert, connection);
                strInsert.Parameters.AddWithValue("@orderId", (int)Session["sOrderNo"]);
                strInsert.Parameters.AddWithValue("@paymode", ddlPayMode.SelectedItem.Text);
                strInsert.Parameters.AddWithValue("@total", pdtPrice);
                strInsert.ExecuteNonQuery(); 
                connection.Close();
                SendMail(); 
                Response.Redirect(Redirect);
            }
            else
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
                connection.Open();
                string strSql = "UPDATE OrderSummary SET TotalPrice = @price WHERE OrdersID = @OrderNo";
                SqlCommand cmd = new SqlCommand(strSql, connection);
                cmd.Parameters.AddWithValue("@OrderNo", (int)Session["sOrderNo"]);
                cmd.Parameters.AddWithValue("@price", Paypal.ToString());
                cmd.ExecuteNonQuery();

                string insert = "INSERT INTO Projects(OrderID, oPayMode, mTotalAmount) VALUES (@orderId, @paymode, @total)";
                SqlCommand strInsert = new SqlCommand(insert, connection);
                strInsert.Parameters.AddWithValue("@orderId", (int)Session["sOrderNo"]);
                strInsert.Parameters.AddWithValue("@paymode", ddlPayMode.SelectedItem.Text);
                strInsert.Parameters.AddWithValue("@total", pdtPrice);
                strInsert.ExecuteNonQuery();
                string sucessMsg = "Thank you for buying our app templates! Do login to view and track your orders!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + sucessMsg + "');", true);
                connection.Close();
                SendMail(); 
            }

            Response.Redirect("Confirmation.aspx"); 


         }

       /* protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DetailsViewRow row1 = DetailsView1.Rows[0];
            string orderID = row1.Cells[1].Text;
            int ordID = int.Parse(orderID); 

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            Label lbldeleteID = (Label)GridView1.Rows[e.RowIndex].FindControl("ordID");
            string strSQL = "DELETE FROM itemsView WHERE OrderID='" + lbldeleteID + "'";
            SqlCommand sqlDelete = new SqlCommand(strSQL, con); 
            con.Open();
            sqlDelete.ExecuteNonQuery();
            con.Close();
            DataBind(); 
        }
        */
        
        
    }
}
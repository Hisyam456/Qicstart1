using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; 

namespace Qicstart1
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsViewRow row0 = DetailsView2.Rows[0];
            string strPdtID = row0.Cells[1].Text;
            Session["ProductID"] = strPdtID;

            DetailsViewRow row2 = DetailsView3.Rows[2];
            string pdtPrice = row2.Cells[0].Text;
            string Paypal_A = pdtPrice.Substring(5);
            decimal Paypal = Math.Round(Convert.ToDecimal(Paypal_A), 2);
            

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if ((string)Session["sFlag"] != "T")
            {
                Type csType = this.GetType();
                string ErrorMessage = "Please Login First";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
                return; 
            }

            int intOrderNo = (int)Session["sOrderNo"];
            string todayDate = DateTime.Now.ToShortDateString();
            DetailsViewRow row2 = DetailsView3.Rows[2];
            string pdtPrice = row2.Cells[0].Text;
            string Paypal_A = pdtPrice.Substring(5);
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            string strSQL = "INSERT INTO OrderDetail(OrderID, ProductID, oTotalPrice, oProjName, oTimeline, oComment) VALUES (@OrderId, @ProdId, @Price, @pname, @timeline , @comment)";
            SqlCommand con = new SqlCommand(strSQL, connection);
            connection.Open();
            con.Parameters.AddWithValue("@OrderId", intOrderNo);
            con.Parameters.AddWithValue("@ProdId", Session["ProductID"]);
            con.Parameters.AddWithValue("@Price", Paypal_A);
            con.Parameters.AddWithValue("@pName", txtProjName.Text);
            con.Parameters.AddWithValue("@timeline", ddlTime.SelectedItem.Text);
            con.Parameters.AddWithValue("@comment", ddlFunc.SelectedItem.Text);
            con.ExecuteNonQuery();


            string strUpdate = "UPDATE OrderSummary SET DateOfPurchase = @ordersdate, DateOfDelivery = @deliverydate WHERE iOrderID = @OrderNo";
            SqlCommand update = new SqlCommand(strUpdate, connection); 
            update.Parameters.AddWithValue("@OrderNo", intOrderNo);
            update.Parameters.AddWithValue("@ordersdate", todayDate);
            update.Parameters.AddWithValue("@deliverydate", txtCompletedDate.Text);
            update.ExecuteNonQuery();
            connection.Close();
            string successMsg = "Item Added To Cart Succesfully";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + successMsg + "');", true);
        }

        protected void ddlTime_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTime.SelectedItem.Text == "10")
            {
                string todayDate = DateTime.Now.ToString();
                DateTime endDate = Convert.ToDateTime(todayDate);
                Int64 addedDays = Convert.ToInt64(ddlTime.SelectedItem.Text);
                endDate = endDate.AddDays(addedDays);
                txtCompletedDate.Text = endDate.ToShortDateString();
            }
            else if (ddlTime.SelectedItem.Text == "15")
            {
                string todayDate = DateTime.Now.ToString();
                DateTime endDate = Convert.ToDateTime(todayDate);
                Int64 addedDays = Convert.ToInt64(ddlTime.SelectedItem.Text);
                endDate = endDate.AddDays(addedDays);
                txtCompletedDate.Text = endDate.ToShortDateString();
            }
            else
            {
                string todayDate = DateTime.Now.ToString();
                DateTime endDate = Convert.ToDateTime(todayDate);
                Int64 addedDays = Convert.ToInt64(ddlTime.SelectedItem.Text);
                endDate = endDate.AddDays(addedDays);
                txtCompletedDate.Text = endDate.ToShortDateString();
            }

        }
    }
}
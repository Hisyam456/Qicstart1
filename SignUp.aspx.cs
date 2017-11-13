using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace Qicstart1
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void SendMail()
        {
            string filename = Server.MapPath("~/event.html");
            string mailbody = System.IO.File.ReadAllText(filename);
            mailbody = mailbody.Replace("##USERNAME##", txtUserID.Text);
            mailbody = mailbody.Replace("##PASS##", txtPassword.Text);
            string to = txtEmail.Text;
            string from = "appmaker82@gmail.com";
            MailMessage message = new MailMessage(from, to);
            message.Subject = "Auto Response Email";
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
                string ErrorMessage = "Email Sent Succesfully!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            }
            catch 
            {
                string ErrorMessage = "Email Sent UnSuccesfully! Please Try Again!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            }
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            Type csType = this.GetType();
            String strSQLSelect = "SELECT cUserID FROM myCustomers";
            SqlCommand select = new SqlCommand(strSQLSelect, connection);
            connection.Open(); 
            SqlDataReader rdr = select.ExecuteReader();
            if (rdr.HasRows == false)
            {
                return; 
            }
            while (rdr.Read())
            {
                if (txtUserID.Text == (string)rdr["cUserID"])
                {
                    string ErrorMessage = "This UserID has already been taken. Please type a new UserID again.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
                    connection.Close();
                    return; 
                }
            }
            rdr.Close();
            
            string query = "INSERT INTO myCustomers(cUserID,cName, cPassword, cAddress, cPostal, cEmail, cPhone, cCountry, cCompany, cGender) VALUES(@ID, @name, @pass, @address, @postal, @email, @phone, @country, @company, @gender)";
            SqlCommand com = new SqlCommand(query, connection);
            txtGender.Text= ddlGender.SelectedItem.ToString(); 
            com.Parameters.AddWithValue("@ID", txtUserID.Text);
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.Parameters.AddWithValue("@pass", txtPassword.Text);
            com.Parameters.AddWithValue("@address", txtAddress.Text);
            com.Parameters.AddWithValue("@postal", txtPostal.Text);
            com.Parameters.AddWithValue("@email", txtEmail.Text);
            com.Parameters.AddWithValue("@phone", txtPhone.Text);
            com.Parameters.AddWithValue("@country", txtCountry.Text);
            com.Parameters.AddWithValue("@company", txtCompany.Text); 
            com.Parameters.AddWithValue("@gender", txtGender.Text);

            com.ExecuteNonQuery(); 
            connection.Close();
            SendMail(); 
            string successMsg = "You have succesfully Registered";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + successMsg + "');", true);
            //Response.Redirect("Login.aspx");

            Session["Flag"] = "T";
            Session["ID"] = (string)txtUserID.Text;
            Session["name"] = (string)txtName.Text;
            Session["sPass"] = (string)txtPassword.Text;
            Session["sPostal"] = (string)txtPostal.Text;
            Session["sAddress"] = (string)txtAddress.Text;
            Session["sEmail"] = (string)txtEmail.Text; 
            Session["sPhone"] = (string)txtPhone.Text;
            Session["sCountry"] = (string)txtCountry.Text;
            Session["sCompany"] = (string)txtCompany.Text; 
            Session["sGender"] = (string)txtGender.Text; 
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUserID.Text = string.Empty;
            txtName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtPostal.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtCountry.Text = string.Empty;
            txtCompany.Text = string.Empty;
            txtConfirm.Text = string.Empty; 
            ddlGender.SelectedIndex = 0; 
        }
    }
}
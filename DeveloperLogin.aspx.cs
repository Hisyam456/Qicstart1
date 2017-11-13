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
    public partial class DeveloperLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            Type csType = this.GetType();
            String strSQLSelect = "SELECT * FROM Developers";
            SqlCommand select = new SqlCommand(strSQLSelect, connection);
            connection.Open();
            SqlDataReader rdr = select.ExecuteReader();
            while (rdr.Read() == true)
            {
                if (txtDevID.Text == (string)rdr["DevID"] && txtDevPass.Text == (string)rdr["dPass"])
                {
                    Session["dFlag"] = "T"; // sFlag = "T" means user has logged in
                    Session["dName"] = rdr["dName"];
                    Session["DevID"] = rdr["DevID"];
                    Session["dAddress"] = rdr["dAddress"];
                    Session["dEmail"] = rdr["dEmail"];
                    Session["dPhone"] = rdr["dPhone"];

                    connection.Close();
                    Response.Redirect("DeveloperMain.aspx"); 
                }
            }

            Session["dFlag"] = "F"; // User has not logged in or has logged out 
            Session["dName"] = "";
            Session["DevID"] = "";
            string ErrorMessage = "Login Unsucessful, please try again!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            connection.Close();    
        }
    }
}
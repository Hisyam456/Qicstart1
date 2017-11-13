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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            Type csType = this.GetType();
            String strSQLSelect = "SELECT * FROM myCustomers";
            SqlCommand select = new SqlCommand(strSQLSelect, connection);
            connection.Open();
            SqlDataReader rdr = select.ExecuteReader();
            while (rdr.Read() == true)
            {
                if (txtUser.Text == (string)rdr["cUserID"] && txtPass.Text == (string)rdr["cPassword"])
                {
                    Session["sFlag"] = "T"; // sFlag = "T" means user has logged in
                    Session["sName"] = rdr["cName"];
                    Session["sUserId"] = rdr["cUserID"];
                    Session["sAddress"] = rdr["cAddress"];
                    Session["sEmail"] = rdr["cEmail"];
                    Session["sPhone"] = rdr["cPhone"];
                    string strUserId = (string) Session["sUserID"];
	                DataRoutines DRObject = new DataRoutines();
	                DRObject.CreateRecs(strUserId);

                    connection.Close();
                    string sucessMessage = "Login Succesful, Prceed to My Account Page";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + sucessMessage + "');", true);
                    Response.Redirect("MyAccount.aspx"); 
                }
            }

            Session["sFlag"] = "F"; // User has not logged in or has logged out 
            Session["sName"] = "";
            Session["sUserId"] = "";
            string ErrorMessage = "Login Unsucessful, please try again!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            connection.Close();    
        }
    }
}
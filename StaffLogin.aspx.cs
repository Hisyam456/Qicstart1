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
    public partial class StaffLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if ((string)Session["sFlag"] == "T")
            {
                Response.Redirect("Default.aspx"); 
            }

            else
            {
                
            }*/
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            Type csType = this.GetType();
            String strSQLSelect = "SELECT * FROM Staff";
            SqlCommand select = new SqlCommand(strSQLSelect, connection);
            connection.Open();
            SqlDataReader rdr = select.ExecuteReader();
            while (rdr.Read() == true)
            {
                if (txtLogin.Text == (string)rdr["StaffID"] && txtPass.Text == (string)rdr["sPass"])
                {
                    Session["stFlag"] = "T"; // sFlag = "T" means user has logged in
                    Session["stName"] = rdr["sName"];
                    Session["stStaffID"] = rdr["StaffID"];
                    Session["stAddress"] = rdr["sAddress"];
                    Session["stEmail"] = rdr["sEmail"];
                    Session["stPhone"] = rdr["sPhone"];

                    connection.Close();
                    string sucessMessage = "Login Succesful, Prceed to Staff Account Page";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + sucessMessage + "');", true);
                    Response.Redirect("StaffMain.aspx");
                }
            }

            Session["stFlag"] = "F"; // User has not logged in or has logged out 
            Session["stName"] = "";
            Session["stStaffID"] = "";
            string ErrorMessage = "Login Unsucessful, please try again!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            connection.Close();   
        }
    }
}
    
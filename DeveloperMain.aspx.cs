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
    public partial class DeveloperMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["dFlag"] != "T")
            {
                lblMessage.Text = "Please Login To Your Developer Account To See Your Work";
                Table1.Visible = false; 

            }
            else
            {
            Table1.Visible=true; 
            lblMessage.Text = "Welcome " + Session["dName"] + "!" ; 
            txtDevID.Text = (string)Session["DevID"]; 
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            connection.Open();
            string strSql = "UPDATE Projects SET mDevID = @devid WHERE ProjectID = @projNo";
            SqlCommand cmd = new SqlCommand(strSql, connection);
            cmd.Parameters.AddWithValue("@projNo", ddlProjID.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@devid", txtDevID.Text);
            cmd.ExecuteNonQuery();
            string ErrorMessage = "Project Updated Succesfully !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            Response.Redirect("DeveloperMain.aspx");
        }

        protected void btnDevOrders_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeveloperMyProjects.aspx"); 
        }
    }
}
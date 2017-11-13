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
    public partial class StaffMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "Welcome " + Session["stName"];
            txtStaffID.Text = (string)Session["stStaffID"];
        }

        protected void btnProject_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            connection.Open();
            string strSql = "UPDATE Projects SET mStaffID = @staffid WHERE ProjectID = @projNo";
            SqlCommand cmd = new SqlCommand(strSql, connection);
            cmd.Parameters.AddWithValue("@projNo", ddlProjID.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@staffid", txtStaffID.Text);
            cmd.ExecuteNonQuery();
            string ErrorMessage = "Project Updated Succesfully !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            Response.Redirect("StaffProjects.aspx");
        }
    }
}
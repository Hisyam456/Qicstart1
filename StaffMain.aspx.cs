using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Qicstart1
{
    public partial class StaffMain1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["stFlag"] != "T")
            {
                lblStaffName.Text = "Please Login To Your Staff Account To See Your Work";
                Table1.Visible = false;

            }
            else
            {
                Table1.Visible = true;
                lblStaffName.Text = "Welcome " + Session["stName"] + "!";
            }
            
        }

        protected void btnAnalytics_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffAnalytics.aspx"); 
        }

        protected void btnDeveloper_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffAddDeveloper.aspx"); 
        }

        protected void btnStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffAddStaff.aspx"); 
        }
    }
}
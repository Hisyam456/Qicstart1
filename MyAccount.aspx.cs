using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Qicstart1
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["sFlag"] != "T")
            {

                lblMessage.Text = "Please Login First";
                this.myAccTable.Visible = false;
                lblOrderNo.Visible = false; 
            }

            else
            {
                lblMessage.Text = "Welcome" + "  " + Session["sName"] + "!";
                lblOrderNo.Text = "Your Order Number Is: " + Session["sOrderNo"]; 
            }
            
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

            this.myAccTable.Visible = false;
            lblOrderNo.Visible = false; 
            Session["sFlag"] = "L"; // L for logout
            Session["sName"] = "";
            Session["sUserId"] = "";
            Session["sOrderNo"] = "";
            lblMessage.Text = "Thank You For Visting! Do Shop with us again"; 
            Response.Redirect("MyAccount.aspx");

        }
    }
}
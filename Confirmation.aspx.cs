﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Qicstart1
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   int myOrder = (int)Session["sOrderNo"]; 
            myOrderNo.Text = myOrder.ToString();
            myName.Text = (string)Session["sName"]; 
        }
    }
}
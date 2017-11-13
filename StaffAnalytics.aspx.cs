using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Configuration;
using System.Web.Script.Services;
using System.Web.Services;

namespace Qicstart1
{
    public partial class StaffAnalytics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart3.Series[0]["PieLabelStyle"] = "Disabled";

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString))
            {

                using (SqlCommand command = new SqlCommand
                       ("SELECT * FROM TotalCustomers; SELECT * FROM TotalOrders; SELECT * FROM ProjectsPending; SELECT * FROM TotalProducts", connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                             Session["TotalCust"] = reader["TotalCustomers"];
                            int totalCust = (int)Session["TotalCust"];
                            lblRegistrations.Text = totalCust.ToString();
                        }

                        if (reader.NextResult())
                        {
                            while (reader.Read())
                            {
                                Session["TotalOrd"] = reader["TotalOrders"];
                                int totalOrd = (int)Session["TotalOrd"];
                                lblNewOrders.Text = totalOrd.ToString();
                            }                  
                        }

                        if (reader.NextResult())
                        {
                            while (reader.Read())
                            {
                                Session["ProjectsPending"] = reader["CountOfNulls"];
                                int projPending = (int)Session["ProjectsPending"];
                                lblProjects.Text = projPending.ToString();
                            }
                        }

                        if (reader.NextResult())
                        {
                            while (reader.Read())
                            {
                                Session["TotalPdts"] = reader["TotalProducts"];
                                int totalPdts = (int)Session["TotalPdts"];
                                lblProducts.Text = totalPdts.ToString();
                            }
                        }
                    }
                }
            }

            
        }

    }
}
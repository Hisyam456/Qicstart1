using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data; 

namespace Qicstart1
{
    public class DataRoutines : System.Web.UI.Page  
    {

        public DataRoutines()
        {

        }
        public void CreateRecs(string strUserId)
        {   
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
        SqlCommand com; 
        Type csType = this.GetType();
        string strSql; 
        string strOFlag = "F";  
        // check to see if there is an active order record
        strSql = "SELECT oOrderStatus FROM OrderSummary WHERE UserID = @UserId " + " ORDER BY iOrderID DESC;";
        com = new SqlCommand(strSql, connection);
        com.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = strUserId; 
        connection.Open(); 
        SqlDataReader rdr = com.ExecuteReader();
        Boolean booRows = rdr.HasRows;
        if (booRows)  // when booRows is true, there are order records for the user 
        {
            rdr.Read();
            if ((string)rdr["oOrderStatus"] != "Ordering") //status of an active order is "Ordering"
            {
                strOFlag = "T"; // "T" means there is a need to create a new Orders record
            }
        }
        else { strOFlag = "T"; }
        connection.Close();
        if (strOFlag == "T")
        {
            // insert a new order record
            String strStatus = "Ordering";
            strSql= "INSERT INTO OrderSummary(UserID, oOrderStatus) VALUES(@UserId, @Status)";
            com = new SqlCommand(strSql, connection);
            com.Parameters.AddWithValue("@UserId", Session["sUserId"]);
            com.Parameters.AddWithValue("@Status", strStatus);
            connection.Open();
            com.ExecuteNonQuery();
            connection.Close();
        }

        // get back order No - this order No is needed when the user buys an item
        strSql = "SELECT iOrderID FROM OrderSummary WHERE UserID = @UserId" + " ORDER BY iOrderID DESC;";
        com = new SqlCommand(strSql, connection);
        com.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = strUserId; 
        connection.Open();
        rdr = com.ExecuteReader();
        rdr.Read();      
        Session["sOrderNo"] = rdr["iOrderID"];  // store the active order no in sOrderNo
        connection.Close();
        return;
        }
    }
}

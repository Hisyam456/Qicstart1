using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data; 
using ASPNetFileUpDownLoad.Utilities;
using System.IO; 

namespace Qicstart1
{
    public partial class DeveloperMyProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["dFlag"] != "T")
            {

                lblMessage.Text = "Please Login as a Developer First";
                this.tableMain.Visible = false;
            }
            else
            {
                lblMessage.Text = "Welcome" + "  " + Session["dName"] + "!" + "Here Are Your Pending Projects";
            }

            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/CompletedProjects/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                
                gvList.DataSource = files;
                gvList.DataBind();
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            connection.Open();
            string strSql = "UPDATE Projects SET mProgress = @progress WHERE ProjectID = @projNo";
            SqlCommand cmd = new SqlCommand(strSql, connection);
            cmd.Parameters.AddWithValue("@projNo", ddlProjID.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@progress", ddlProgress.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            string ErrorMessage = "Project Updated Succesfully !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
            Response.Redirect("DeveloperMyProjects.aspx"); 
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("CompletedProjects\\" + FileUpload1.FileName));
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
            connection.Open();
            string strSql = "UPDATE Projects SET mFileName = @data WHERE ProjectID = @projNo ";
            SqlCommand cmd = new SqlCommand(strSql, connection);
            cmd.Parameters.AddWithValue("@projNo", ddlProjID.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@data", "~/CompletedProjects/" + FileUpload1.FileName);
            cmd.ExecuteNonQuery(); 
            connection.Close(); 
            string ErrorMessage = "File Uploaded Succesfully !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ErrorMessage + "');", true);
           /* HttpFileCollection files = Request.Files;
            foreach (string fileTagName in files)
            {
                HttpPostedFile file = Request.Files[fileTagName];
                if (file.ContentLength > 0)
                {
                    // Due to the limit of the max for a int type, the largest file can be
                    int size = file.ContentLength;
                    // uploaded is 2147483647, which is very large anyway.
                    byte[] fileData = new byte[size];
                    file.InputStream.Read(fileData, 0, size);

                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString);
                    connection.Open();
                    string strSql = "UPDATE Projects SET mFile = @data WHERE ProjectID = @projNo ";
                    SqlCommand cmd = new SqlCommand(strSql, connection);
                    cmd.Parameters.AddWithValue("@projNo", ddlProjID.SelectedItem.Text);
                    cmd.Parameters.Add("@data", SqlDbType.VarBinary);
                    cmd.Parameters["@data"].Value = fileData;
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    //FileUtilities.SaveFile(fileData);
                }                
            }*/ 


       /*  // Get the file id from the query string
            int id = Convert.ToInt16(Request.QueryString["DevOrdID"]);

            // Get the file from the database
            DataTable file = FileUtilities.GetAFile(id);
            DataRow row = file.Rows[0];

            string name = (string)row["Name"];
            //string contentType = (string)row["ContentType"];
            Byte[] data = (Byte[])row["Data"];

            // Send the file to the browser
            //Response.AddHeader("Content-type", contentType);
            //Response.AddHeader("Content-Disposition", "attachment; filename=" + name);
            Response.BinaryWrite(data);
            Response.Flush();
            Response.End();

            DataTable fileList = FileUtilities.GetFileList();
            gvList.DataSource = fileList;
            gvList.DataBind();*/ 
        }
     }

  }

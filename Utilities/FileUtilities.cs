using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace ASPNetFileUpDownLoad.Utilities
{
    public class FileUtilities
    {
      /*  private static string GetConnectionString()
        {
            return ConfigurationManager.AppSettings["DBConnectionString"];
        }

        private static void OpenConnection(SqlConnection connection)
        {
            connection.ConnectionString = GetConnectionString();
            connection.Open();
        }*/ 

        // Get the list of the files in the database
        public static DataTable GetFileList()
        {
            DataTable fileList = new DataTable();
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString))
            {
                connection.Open();
                string strSql = "SELECT ProjectID, OrderID, mDevID, mFile FROM Projects";
                SqlCommand cmd = new SqlCommand(strSql, connection);
                SqlDataAdapter adapter = new SqlDataAdapter();

                adapter.SelectCommand = cmd;
                adapter.Fill(fileList);
                connection.Close();
            }

            return fileList;
        }

        /* Save a file into the database
        public static void SaveFile(byte[] data)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString))
            {

                connection.Open();
                string strSql = "UPDATE Projects SET mFile = @data WHERE ProjectID = @projNo ";
                SqlCommand cmd = new SqlCommand(strSql, connection);

                cmd.Parameters.Add("@data", SqlDbType.VarBinary);
                cmd.Parameters["@data"].Value = data;
                cmd.ExecuteNonQuery();

                connection.Close();
            }
        }
        */ 
        // Get a file from the database by ID
        public static DataTable GetAFile(int id)
        {
            DataTable file = new DataTable();
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["qicstartConnectionString"].ConnectionString))
            {

                connection.Open();
                string strSql = "SELECT ";
                SqlCommand cmd = new SqlCommand(strSql, connection);
                cmd.CommandText = "SELECT ProjectID, mFile FROM Projects "
                    + "WHERE OrderID=@ID";
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter adapter = new SqlDataAdapter();

                cmd.Parameters.Add("@ID", SqlDbType.Int);
                cmd.Parameters["@ID"].Value = id;

                adapter.SelectCommand = cmd;
                adapter.Fill(file);

                connection.Close();
            }

            return file;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace AWT_d
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string connectionString =
ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString;
        protected void btnLoadData_Click(object sender, EventArgs e)
        {
            LoadData();
        }
        private void LoadData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Employee";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataSet dataSet = new DataSet();
                // Fill the DataSet with data from the database
                adapter.Fill(dataSet, "Employees");
                // Bind the DataSet to the GridView
                GridView1.DataSource = dataSet.Tables["Employees"];
                GridView1.DataBind();
            }
        }
        protected void btnUpdateData_Click(object sender, EventArgs e)
        {
            UpdateData();
        }
        private void UpdateData()
        {
            // Example of updating email for all employees named 'John Doe'
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string updateQuery = "UPDATE Employee SET Email = @Email WHERE Name =@Name";
            SqlCommand command = new SqlCommand(updateQuery, connection);
                command.Parameters.AddWithValue("@Email", "nat@example.com");
                command.Parameters.AddWithValue("@Name", "Thor");
                connection.Open();
                command.ExecuteNonQuery();
            }
            // Reload data after update
            LoadData();
        }
    }
}
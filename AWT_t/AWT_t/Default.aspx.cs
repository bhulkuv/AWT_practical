using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWT_t
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLoadData_Click(object sender, EventArgs e)
        {
            LoadData();
        }
        private void LoadData()
        {
            string conString =
           ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(conString))
            {
                string query = "SELECT Name, Email, Mobile FROM Employee";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataTable dataTable = new DataTable();
                // Fill the DataTable with data from the database
                adapter.Fill(dataTable);
                // Bind the DataTable to the GridView
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }
    }
}
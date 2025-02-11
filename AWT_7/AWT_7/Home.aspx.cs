using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWT_7
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)

        {

            // Validate and convert the input

            if (int.TryParse(txtEmpID.Text.Trim(), out int empID))

            {

                // Get the connection string from Web.config

                string constr = ConfigurationManager.ConnectionStrings["DemoDBConnectionString"].ConnectionString;


                // Connect to the database and execute the stored procedure

                using (SqlConnection con = new SqlConnection(constr))

                {

                    using (SqlCommand cmd = new SqlCommand("sp_GetEmployeeById", con))

                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        // Pass the parameter value

                        cmd.Parameters.AddWithValue("@EmpID", empID);


                        // Use a DataAdapter to fill a DataTable

                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))

                        {

                            DataTable dt = new DataTable();

                            sda.Fill(dt);


                            // Bind the DataTable to the GridView

                            gvEmployee.DataSource = dt;

                            gvEmployee.DataBind();

                        }

                    }

                }

            }

            else

            {

                // Optionally, handle invalid input

                gvEmployee.DataSource = null;

                gvEmployee.DataBind();

            }

        }
    }
}
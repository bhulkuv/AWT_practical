using System;
using System.Data.SqlClient;
using System.Configuration;
public partial class RegistrationForm : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Retrieve the connection string from Web.config
        string connectionString = ConfigurationManager.ConnectionStrings["OrganizationDBConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            // SQL query to insert data into the Users table
            string query = "INSERT INTO Users (UserName, Password, Email, City, Gender, DateOfBirth) VALUES (@UserName, @Password, @Email, @City, @Gender, @DateOfBirth)";
            SqlCommand cmd = new SqlCommand(query, conn);
            // Add form data to the command's parameters
            cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@City", ddlCity.SelectedValue);
            cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedValue);
            cmd.Parameters.AddWithValue("@DateOfBirth", calDOB.SelectedDate);
            // Open the connection, execute the command, and close the connection
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        // Display a confirmation message
        Response.Write("Registration successful!");
    }
}
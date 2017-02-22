using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Welcomepage : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=stusql;Initial Catalog=SquadDatabase; Integrated Security=true");
    protected void register_Click(object sender, EventArgs e)
    {
        //string registerSQLString;
        string userEmail = ((TextBox)EmailRegistry.FindControl("EmailRegistry")).Text;
        string firstName = ((TextBox)FirstNameRegistry.FindControl("FirstNameRegistry")).Text;
        string lastName = ((TextBox)LastNameRegistry.FindControl("LastNameRegistry")).Text;
        string dateOfBirth = ((TextBox)DateOfBirth.FindControl("DateOfBirth")).Text;
        string password = ((TextBox)PasswordRegistry.FindControl("PasswordRegistry")).Text;
        string confirmPassword = ((TextBox)ConfirmPasswordRegistry.FindControl("ConfirmPasswordRegistry")).Text;
        string gender = ((DropDownList)GenderList.FindControl("GenderList")).Text;

        //registerSQLString = userEmail + firstName + lastName + dateOfBirth + password + gender;

        

        string registerSql = "insert into [User] values ('"+password+"','"+userEmail+"','"+firstName+"','"+lastName+"','"+gender+"','"+dateOfBirth+")";

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(registerSql, conn);
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
        }
        finally
        {
            conn.Close();
            Response.Redirect("http://localhost:57510/Welcomepage.aspx");
        }

    }

    protected bool SignIn_Click(object sender, EventArgs e)
    {
        string userEmailLogIn = ((TextBox)emailLogin.FindControl("emailLogin")).Text;
        string passwordLogIn = ((TextBox)passwordLogin.FindControl("passwordLogin")).Text;

        bool valid = false;
        
        string loginSQL = "SELECT COUNT FROM [User] WHERE Email = '" + userEmailLogIn + "' AND Password = '" + passwordLogin + "'";
        
        SqlCommand cmd = new SqlCommand(loginSQL, conn);
        try
        {
            
            int rowCount = Convert.ToInt32(cmd.ExecuteScalar());
            
            if (rowCount >= 1)
            {
                valid = true;
                Response.Redirect("http://localhost:57510/Homepage.aspx");
            }
            else if (rowCount <= 0)
            {
                valid = false;
                Response.Redirect("http://localhost:57510/Welcomepage.aspx");
            }
        }
        catch
        {

        }
        return valid;
    }
}
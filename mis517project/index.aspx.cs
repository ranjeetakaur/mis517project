using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// for DB connection
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace mis517project
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // login

        protected void Button2_Click(object sender, EventArgs e)
        {
            // get username from web control
            String username = TextBox1.Text;
            String password = TextBox2.Text;

            // open the DB connection
            SqlConnection myConnection = new SqlConnection();

            // set the connection String- MDF sql server
            myConnection.ConnectionString = WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString;


            // open the DB connection
            try
            {
                myConnection.Open();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }


            // check if user exisit from the DB

            String sqlCmdStr = "select * from logintabletemp where name = '";
            sqlCmdStr += username + "' ";

            SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);

            SqlDataReader myReader;
            myReader = myCommand.ExecuteReader();


            // if exist - then redirect to "Instructor Page"
            // else - print error msg "user does not exists"

            if (myReader.Read())
            {
                if (myReader["password"].ToString().Equals(password))
                {
                    //Label1.ForeColor = System.Drawing.Color.Black;
                    //Label1.Text = "username \"" + username + "\" found with password " + myReader["password"].ToString();

                    // user exists - then redirect to "Instructor Page"
                    Session["instructorename"] = username;
                    Session["dbconnection"] = myConnection;
                    Response.Redirect("instructor.aspx?Name=" + username);
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "incorrect password";
                }

            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "username \"" + username + "\" not found.";
            }


            // Close connection
            myConnection.Close();
        }
    }
}
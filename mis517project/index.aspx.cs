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
            
            // open the DB connection
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);
            
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

            String sqlCmdStr = "select * from logintbl where id = '";
            sqlCmdStr += txtUserId.Text + "' ";

            SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);

            SqlDataReader myReader;
            myReader = myCommand.ExecuteReader();


            // if exist - then redirect to "Instructor Page"
            // else - print error msg "user does not exists"

            if (myReader.Read())
            {
                if (myReader["password"].ToString().Equals(txtPassword.Text))
                {
                    Session["instructorename"] = txtUserId.Text;

                    Label1.ForeColor = System.Drawing.Color.Black;
                    Label1.Text = "Login Success.";

                    Response.Redirect("instructor.aspx?Name=" + txtUserId.Text);
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
                Label1.Text = "User ID \"" + txtUserId.Text + "\" not found.";
            }


            // Close connection
            myConnection.Close();
        }
    }
}
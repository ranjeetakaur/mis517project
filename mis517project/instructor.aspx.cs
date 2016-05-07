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
    public partial class instructor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // make sure the user first logged in
            if (null == Session["instructorename"])
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Label1.Text = "Welcome " + "\"" + Session["instructorename"].ToString() + "\"";
            }
        }

        // signout
        protected void Button2_Click(object sender, EventArgs e)
        {
            // open the DB connection
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);
            

            try
            {
                // close the db connection
                myConnection.Close();
                Label1.Text = "DB connection closed and Signedout Instructor";

                // abondon the session
                Session.Abandon();

                // go back to the maon login page.
                Response.Redirect("index.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }

        }

        // Student Attendance
        protected void Button3_Click(object sender, EventArgs e)
        {
            // go to attendance page.
            Response.Redirect("attendance.aspx");

        }

        // Student Information
        protected void Button4_Click(object sender, EventArgs e)
        {
            // go to student information page.
            Response.Redirect("studentinfo.aspx");

        }

        

        
    }
}
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
    public partial class regnewuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // register new user
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Text = "entered the register button";
            var loginId = TextBox4.Text;
            var instructId = TextBox1.Text;
            var name = TextBox2.Text;
            var password = TextBox3.Text;


            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);
            
            try
            {
                myConnection.Open();

            }
            catch(Exception Ex)
            {
                Label1.Text = Ex.ToString();
                return;
            }

            // check if loginId already exists

            
            String comm1Str = "select * from logintbl where Id= '" + loginId + "'";
            SqlCommand myComm1 = new SqlCommand(comm1Str, myConnection);

            SqlDataReader myReader;
            myReader = myComm1.ExecuteReader();
            
            if (myReader.Read())
            {
                
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Login ID \"" + myReader["Id"].ToString() + "\" already exists and its instructor ID is : " + myReader["instructorid"].ToString();
                myConnection.Close();
                return;
                
            }

            myReader.Close();

            // check if instructorId is valid one

            comm1Str = "select * from logintbl where instructorid= '" + instructId + "'";
            myComm1 = new SqlCommand(comm1Str, myConnection);

            myReader= myComm1.ExecuteReader();

            if (!myReader.Read())
            {

                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Instructor ID \"" + instructId + "\" does not exist!" + "<br/>" + "You must have a valid Instructor ID.";
                myConnection.Close();
                return;

            }

            myReader.Close();


            // make a new entry in to the "LoginTble"
            String newuserStr = "insert into logintbl values('" + loginId + "','";
            newuserStr += instructId + "','";
            newuserStr += name + "','";
            newuserStr += password + "')";

            SqlCommand myCommand = new SqlCommand(newuserStr, myConnection);
            myCommand.ExecuteNonQuery();

            Label1.ForeColor = System.Drawing.Color.Black;
            Label1.Text = "Successfully created user";

            myConnection.Close();


        }
    }
}
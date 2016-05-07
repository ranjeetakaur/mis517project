using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// db connection
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;
using System.Configuration;
using System.Data.Common;

namespace mis517project
{
    public partial class studentinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // register new Student

        protected void Button1_Click(object sender, EventArgs e)
        {
            // register new student
            var rollno = TextBox1.Text;
            var name = TextBox2.Text;
            var department = TextBox3.Text;
            var dob = TextBox4.Text;
            var addr= TextBox5.Text;
            var mobilenumner= TextBox6.Text;
            var emailid= TextBox7.Text;
            var notes = TextBox8.Text;

            // validate rollno,dob
            //
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);

            myConnection.Open();

            // check if rollno already exists
            String st1 = "select * from studentinfotbl where rollno=" + rollno;
            SqlCommand myCommand = new SqlCommand(st1, myConnection);

            var reader = myCommand.ExecuteReader();

            if (reader.Read())
            {
                // rollno  exists hence return
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Roll number \"" + rollno + "\" already exists. Try another one.";
                myConnection.Close();
                return;
            }

            reader.Close();

            // new student insert
            String sqlStr= "insert into studentinfotbl values(" + rollno;
            sqlStr += ",'" + name + "','" + department + "','" + dob + "','" + addr + "','" + mobilenumner + "','" + emailid + "','" + notes+ "')";

            myCommand = new SqlCommand(sqlStr, myConnection);

            if (myCommand.ExecuteNonQuery() !=0)
            {
                Label1.ForeColor = System.Drawing.Color.Black;
                Label1.Text = "Student added successfully";
                
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Student addition failed";
               
            }

            myConnection.Close();
        }

        // show all students
        protected void Button2_Click(object sender, EventArgs e)
        {
            var myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);

            myConnection.Open();

            SqlCommand myCommand = new SqlCommand("select * from studentinfotbl", myConnection);


            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(myCommand);
                DataSet dSet = new DataSet();
                adapter.Fill(dSet);

                GridView1.DataSource = dSet;
                this.DataBind();


            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }


            myConnection.Close();

        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();

            Button2_Click(sender, e);
        }

        // return to instructor page
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("instructor.aspx");
        }
    }
}
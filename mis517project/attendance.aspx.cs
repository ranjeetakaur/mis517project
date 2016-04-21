using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// for DB connection
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.Common;
using System.Web.Configuration;




namespace mis517project
{
    public partial class attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label1.Text = "Attendance Page for Instructor "+ "\"" + Session["instructorename"].ToString() + "\"";

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

            // dropdownlist2 for  scode

            
            // cmd string

            SqlCommand myCommand = new SqlCommand("select scode from subjecttbl;select rollno from studentinfotbl", myConnection);

            var reader = myCommand.ExecuteReader();

            DropDownList2.DataSource = reader;
            DropDownList2.DataTextField = "scode";

            DropDownList2.DataBind();
            
            
            // dropdownlist3 for  rollno
            reader.NextResult();
            DropDownList3.DataSource = reader;
            DropDownList3.DataTextField = "rollno";

            DropDownList3.DataBind();

            // close connection
            myConnection.Close();

            

        }

        // Show Attendance table contents
        protected void Button4_Click(object sender, EventArgs e)
        {
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

            // cms string
            String sqlCmdStr = "select * from attendancetbl";            
            SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);

            
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(myCommand);
                DataSet dsPubs = new DataSet();
                adapter.Fill(dsPubs);

                GridView1.DataSource = dsPubs;
                GridView1.DataBind();
 
         
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }


            myConnection.Close();

        }

        // 5 fewest absences 
        protected void Button5_Click(object sender, EventArgs e)
        {

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

            // cms string
            
            //String sqlCmdStr = "select rollno, count(*) NumOfPresence from attendancetbl where attend='present' group by rollno order by NumOfPresence DESC";

            String sqlCmdStr = "select s.name, a.rollno  from studentinfotbl s, attendancetbl a where s.rollno = a.rollno AND a.rollno IN (select rollno, count(*) NumOfPresence from attendancetbl where attend='present' group by rollno order by NumOfPresence DESC)";
        
             
            SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);


            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(myCommand);
                DataSet dsPubs = new DataSet();
                adapter.Fill(dsPubs);

                GridView1.DataSource = dsPubs;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }


            myConnection.Close();

        }

        // most absent
        protected void Button6_Click(object sender, EventArgs e)
        {
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

            // cms string
            //String sqlCmdStr = "select * from attendancetbl where attend='present' order by rollno";
            String sqlCmdStr = "select rollno, count(*) NumOfAbsences from attendancetbl where attend='absent' group by rollno order by NumOfAbsences DESC";

            //String sqlCmdStr = "select s.name, a.rollno  from studentinfotbl s, attendancetbl a where s.rollno = a.rollno AND rollno IN (select rollno, count(*) NumOfPresence from attendancetbl where attend='present' group by rollno order by NumOfPresence DESC)";


            SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);


            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(myCommand);
                DataSet dsPubs = new DataSet();
                adapter.Fill(dsPubs);

                GridView1.DataSource = dsPubs;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }


            myConnection.Close();

        }

        // enter new attendance
        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = TextBox1.Text;
            String date = TextBox2.Text;
            int hour = int.Parse(TextBox3.Text);
            var scode = DropDownList2.Text;
            var rollno = DropDownList3.Text;
            String attend = DropDownList1.Text;

            // update to database
            // open the DB connection
            SqlConnection myConnection = new SqlConnection();

            // set the connection String- MDF sql server
            myConnection.ConnectionString = WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString;

            // open the DB connection
            try
            {
                myConnection.Open();
                // cmd string
                String sqlCmdStr = "update attendancetbl set id=";
                sqlCmdStr += id + ", date='" + date + "',hour=" + hour + ",scode=" + scode + ",rollno=" + rollno + ",attend='" + attend + "'";


                SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);
                myCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }

            
            myConnection.Close();



        }

        
    }
}
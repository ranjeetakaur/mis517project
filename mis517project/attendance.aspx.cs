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
using System.Configuration;




namespace mis517project
{
    public partial class attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // make sure the user first logged in
            if (null == Session["instructorename"])
            {
                Response.Redirect("index.aspx");
            }

            if (!IsPostBack)
            {
                UpdateScodeRollnoDropdownList();
            }

                       

        }

        private void UpdateScodeRollnoDropdownList()
        {
            // open the DB connection
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);


            // open the DB connection
            try
            {
                myConnection.Open();
                // dropdownlist2 for  scode
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

            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();

            }
            finally
            {
                myConnection.Close();
            }


        }
        
        
        // 5 fewest absences 
        protected void Button5_Click(object sender, EventArgs e)
        {

            // open the DB connection
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);

            
            // open the DB connection
            try
            {
                myConnection.Open();
                String sqlCmdStr = "select TOP 5 rollno, count(*) Fewest_Absent from attendancetbl where attend='present' group by rollno order by Fewest_Absent DESC";

                SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);
                SqlDataAdapter adapter = new SqlDataAdapter(myCommand);
                DataSet dsPubs = new DataSet();
                adapter.Fill(dsPubs);

                GridView2.DataSource = dsPubs;
                GridView2.DataBind();



            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }
            finally
            {
                myConnection.Close();
            }
            
            
        }

        // most absent
        protected void Button6_Click(object sender, EventArgs e)
        {
            // open the DB connection
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);

           
            // open the DB connection
            try
            {
                myConnection.Open();
                String sqlCmdStr = "select TOP 5 rollno, count(*) Most_Absent from attendancetbl where attend='absent' group by rollno order by Most_Absent DESC";

                SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);
                SqlDataAdapter adapter = new SqlDataAdapter(myCommand);
                DataSet dsPubs = new DataSet();
                adapter.Fill(dsPubs);

                GridView2.DataSource = dsPubs;
                GridView2.DataBind();



            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                return;
            }
            finally
            {
                myConnection.Close();

            }

            
        }

        /*
        // Enter new attendance
         */
        protected void Button1_Click(object sender, EventArgs e)
        {
            String date = TextBox2.Text;
            int hour = int.Parse(DropDownList4.Text);
            var scode = DropDownList2.Text;
            var rollno = DropDownList3.Text;
            String attend = DropDownList1.Text;

            // update to database
            // open the DB connection
            SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString);

           

            // open the DB connection
            try
            {
                myConnection.Open();

                 
                // cmd string
                String sqlCmdStr = "insert into attendancetbl values('" + date + "',";
                sqlCmdStr += hour + "," + scode + "," + rollno + ",'" + attend + "')";


                SqlCommand myCommand = new SqlCommand(sqlCmdStr, myConnection);
                myCommand.ExecuteNonQuery();

                Label2.ForeColor = System.Drawing.Color.Black;
                Label2.Text = "Added successfully";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                
            }
            finally
            {
                myConnection.Close();
            }

            
        }

        // return to instructor page
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("instructor.aspx");
        }

           
        

        
    }
}
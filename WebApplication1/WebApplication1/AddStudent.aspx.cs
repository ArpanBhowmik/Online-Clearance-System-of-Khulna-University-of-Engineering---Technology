using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

namespace WebApplication1
{
    public partial class AddStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (Session["user"] == null)
            {
                Response.Redirect("Start.aspx");
            }
            else
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                con.Open();
                showData();
                con.Close();
            }
        }
        public void showData()
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            cmd.CommandText = "select * from AdminInfo where Type='" + Session["user"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label2.Text = "Welcome " + ds.Tables[0].Rows[0]["Type"].ToString()+"!";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            conn.Open();
            SqlCommand cm = new SqlCommand();
            string select = "select * from [Students]where Roll=@Roll";
            cm.CommandText = select;
            cm.Connection = conn;
            cm.Parameters.AddWithValue("@Roll", TextBox6.Text);
            SqlDataReader rd = cm.ExecuteReader();
            if (rd.HasRows)
            {
                Label1.Text = "Roll No. already exists!";
                conn.Close();
            }
            else
            {
                string name = TextBox5.Text.Trim();
                string roll = TextBox6.Text.Trim();
                string pass = TextBox10.Text.Trim();
                string mobile = TextBox9.Text.Trim();
                string mail = TextBox8.Text.Trim();

                if (name == "" || roll == "" || pass == "" || mobile == "" || mail == "")
                {
                    Label1.Text = "Please fill up all the informations!";

                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();

                    string path = Server.MapPath("Image/");
                    if(FileUpload3.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload3.FileName);
                        FileUpload3.SaveAs(path + FileUpload3.FileName);
                        string nm = "Image/" + FileUpload3.FileName;
                        cmd.Connection = con;
                        string insert = "insert into Students(Name, Roll, Dept, Mail, Sex, Hall, Mobile, Blood, Religion, Password,Image) values('" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList10.SelectedItem.Text + "','" + TextBox8.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "','" + TextBox9.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + TextBox10.Text+"','" + nm + "')";
                        cmd.CommandText = insert;
                        cmd.ExecuteNonQuery();

                        insert = "insert into Credit (Roll,Status) values(@Roll,@Status)";
                        cmd.CommandText = insert;
                        cmd.Parameters.AddWithValue("@Roll", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@Status", "0");
                        cmd.ExecuteNonQuery();

                        con.Close();
                        Response.Write("<script>alert('Student Added Successfully!');</script>");

                    }
                    else
                    {
                        Label1.Text = "Please upload an image of the student!";
                    }
                   
         

                    // Response.Redirect("AddStudent.aspx");

                }
            }
        }

        protected void Log(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");

        }

       
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (Session["user"] != null)
            {
                Response.Redirect("StudentHome.aspx");
            }
            else
            {
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con.Open();

            string select = "select * from [Students]where Roll=@Roll and Password=@Password";
            cmd.CommandText = select;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Roll", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            string roll = TextBox1.Text.Trim();
            if(rd.HasRows)
            {
                Session["user"] = roll;
                Response.Redirect("StudentHome.aspx");
            }
            else
            {
                Label1.Text = "Wrong Password!";
            }
            con.Close();
        }
    }
}
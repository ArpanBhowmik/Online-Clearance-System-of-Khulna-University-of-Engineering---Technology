using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "";
            if (Session["user"] == null)
            {
                Response.Redirect("Start.aspx");
            }
            else
            {
                string str = Session["user"].ToString();
                Label1.Text = "Welcome " + str + "!";
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select Password from Students where Roll='" + Session["user"] + "'";
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            string pass = ds.Tables[0].Rows[0]["Password"].ToString();
            string old = TextBox1.Text.ToString();
            string new1= TextBox2.Text.ToString();
            string new2 = TextBox3.Text.ToString();
            if(pass!=old)
            {
                Label2.Text = "Please enter correct password!";
            }
            else if(new1=="" || new2=="")
            {
                Label2.Text = "Password can not be null!";
            }
            else if(new1!=new2)
            {
                Label2.Text = "Passwords didn't match!";
            }
            else
            {
                string upd = "update Students set Password=@Password where Roll='"+Session["user"]+"'";
                SqlCommand cm = new SqlCommand(upd, con);
                cm.Parameters.AddWithValue("@Password", TextBox3.Text);
                cm.ExecuteNonQuery();
                Response.Write("<script>alert('Password updated successfully!');</script>");

            }
            con.Close();


        
        }
    }
}
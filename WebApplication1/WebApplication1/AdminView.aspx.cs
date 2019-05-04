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
    public partial class AdminView : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label13.Text = "";
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";
            Label7.Text = "";
            Label8.Text = "";
            Label9.Text = "";
            Label10.Text = "";
            Label11.Text = "";
            Label12.Text = "";
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox8.Visible = false;
            TextBox9.Visible = false;
            TextBox10.Visible = false;
            DropDownList5.Visible = false;
            DropDownList6.Visible = false;
            DropDownList8.Visible = false;
            DropDownList9.Visible = false;
            DropDownList10.Visible = false;
            Button2.Visible = false;
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
            cmd.CommandText = "select * from AdminInfo where Type='" + Session["user"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label2.Text = "Welcome " + ds.Tables[0].Rows[0]["Type"].ToString() + "!";
        }

        protected void Log(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str = TextBox11.Text.ToString();
            if (str == "")
            {
                Label13.Text = "Please enter a roll number!";
            }
            else
            {

                Label3.Text = "Name";
                Label4.Text = "Roll No";
                Label5.Text = "Department";
                Label6.Text = "E-mail";
                Label7.Text = "Sex";
                Label8.Text = "Hall";
                Label9.Text = "Mobile";
                Label10.Text = "Blood Group";
                Label11.Text = "Religion";
                Label12.Text = "Password";
                TextBox5.Visible = true;
                TextBox6.Visible = true;
                TextBox8.Visible = true;
                TextBox9.Visible = true;
                TextBox10.Visible = true;
                DropDownList5.Visible = true;
                DropDownList6.Visible = true;
                DropDownList8.Visible = true;
                DropDownList9.Visible = true;
                DropDownList10.Visible = true;
                Button2.Visible = true;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                con.Open();
                string select = "select * from Students where Roll='" + TextBox11.Text + "'";
                cmd.CommandText = select;
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds);
                TextBox6.Text = TextBox11.Text.ToString();

                TextBox5.Text = ds.Tables[0].Rows[1]["Name"].ToString();
                DropDownList10.SelectedItem.Text = ds.Tables[0].Rows[1]["Dept"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[1]["Mail"].ToString();
                DropDownList5.SelectedItem.Text = ds.Tables[0].Rows[1]["Sex"].ToString();
                DropDownList6.SelectedItem.Text = ds.Tables[0].Rows[1]["Hall"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[1]["Mobile"].ToString();
                DropDownList9.SelectedItem.Text = ds.Tables[0].Rows[1]["Blood"].ToString();
                DropDownList8.SelectedItem.Text = ds.Tables[0].Rows[1]["Religion"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[1]["Password"].ToString();

                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con.Open();
            cmd.Connection = con;
            string upd="update Students set Name=@Name,Roll=@Roll,Dept=@Dept,Mail=@Mail,Sex=@Sex,Hall=@Hall,Mobile=@Mobile,Blood=@Blood,Religion=@Religion,Password=@Password where Roll='"+TextBox11.Text+"'";
            cmd.CommandText = upd;
            cmd.Parameters.AddWithValue("@Name", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Roll", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Dept", DropDownList10.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Mail", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Sex", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Hall", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Blood", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Religion", DropDownList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox10.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Successfully updated!');</script>");







        }
    }
}
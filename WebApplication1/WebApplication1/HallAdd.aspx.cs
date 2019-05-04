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
    public partial class HallAdd : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }

        }
        public void showData()
        {
            cmd.CommandText = "select * from AdminInfo where Type='" + Session["user"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = "Welcome " + ds.Tables[0].Rows[0]["Type"].ToString() + "!";
        }

        protected void Log(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else if (Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string insert = "insert into Hall(Roll,Date,Hall,Year,Start,Ending,Dues) values(@Roll,@Date,@Hall,@Year,@Start,@Ending,@Dues)";
            //string insert = "insert into Hall(Roll,Date,Year,Dues,Hall,Start) values(@Roll,@Date,@Year,@Dues,@Hall,@Start)";
            cmd.CommandText = insert;
            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@Roll", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Date", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Dues", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Hall", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Year", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Start", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Ending", DropDownList4.SelectedItem.Text);

             if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && DropDownList1.SelectedItem.Text != "" && DropDownList2.SelectedItem.Text != "" && DropDownList3.SelectedItem.Text != "" && DropDownList4.SelectedItem.Text != "")
              {
                  cmd.ExecuteNonQuery();
                  Response.Write("<script>alert('Successful!');</script>");
              }

              else
              {
                  Response.Write("<script>alert('Can not take null values!');</script>");

              }

              conn.Close();

        }
    }
}
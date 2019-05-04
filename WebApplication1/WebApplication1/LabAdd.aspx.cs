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
    public partial class LabAdd : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
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
            if(Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else if(Calendar1.Visible==false)
            {
                Calendar1.Visible = true;
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string insert = "insert into Lab(Roll,Date,Dues,Name,Status) values(@Roll,@Date,@Dues,@Name,@Status)";
            cmd.CommandText = insert;
            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@Roll", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Date", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Dues", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Name", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Status", false);

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && DropDownList1.SelectedItem.Text != "") {
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
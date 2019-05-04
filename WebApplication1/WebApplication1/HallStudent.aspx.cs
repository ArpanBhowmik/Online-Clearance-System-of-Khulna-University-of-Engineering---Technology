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
    public partial class HallStudent : System.Web.UI.Page
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
                string query;
                query = "select Roll,Date,Hall,Year,Start,Ending,Dues from Hall where Roll='" + Session["user"] + "'";
                cmd.CommandText = query;
                cmd.Connection = con;
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.HeaderRow.Cells[4].Text = "From";
                    GridView1.HeaderRow.Cells[5].Text = "To";
                    GridView1.HeaderRow.Cells[6].Text = "Dues(Taka)";
                }
                con.Close();
            }

        }
        public void showData()
        {
            cmd.CommandText = "select * from Students where Roll='" + Session["user"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = "Welcome " + ds.Tables[0].Rows[0]["Roll"].ToString() + "!";

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");
        }
    }
}
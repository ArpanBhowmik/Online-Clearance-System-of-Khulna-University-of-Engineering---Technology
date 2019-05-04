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
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("Start.aspx");
            }
            else
            {
                string str = Session["user"].ToString();
                Label1.Text = "Welcome " + str + "!";
                SqlConnection con = new SqlConnection();
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                string query = "select *from [Students] where Roll='" + Session["user"] + "'";
                SqlCommand cmd = new SqlCommand(query,con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
           

            }

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
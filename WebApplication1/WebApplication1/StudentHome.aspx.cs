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
    public partial class StudentHome : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("Start.aspx");
            }
            else
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                con.Open();
                showData();
            }

        }
        public void showData()
        {
            cmd.CommandText = "select * from Students where Roll='" + Session["user"] + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text ="Welcome " +  ds.Tables[0].Rows[0]["Roll"].ToString()+"!";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            bool flag = true;
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con2.Open();
            SqlCommand cm = new SqlCommand();
            string select = "select * from Lab where roll='"+Session["user"]+"'";
            cm.CommandText = select;
            cm.Connection = con2;
            SqlDataReader rd2 = cm.ExecuteReader();
            if(rd2.HasRows)
            {
                flag = false;
            }
            con2.Close();
            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con3.Open();

            select = "select * from Hall where roll='" + Session["user"] + "'";
            cm.CommandText = select;
            cm.Connection = con3;
            SqlDataReader rd3 = cm.ExecuteReader();
            if(rd3.HasRows)
            {
                flag = false;
            }
            con3.Close();
            SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con4.Open();

            cm.CommandText= "select* from Credit where roll = '" + Session["user"] + "'";
            cm.Connection = con4;
            sda.SelectCommand = cm;
            ds = new DataSet();
            sda.Fill(ds);
            string ok = ds.Tables[0].Rows[0]["Status"].ToString();
            if(ok=="0")
            {
                flag = false;
            }
            if(flag)
            {
                Response.Redirect("ClearenceSuccess.aspx");
            }
            else
            {
                Response.Redirect("ClearenceFail.aspx");
            }
            con4.Close();



        }
    }
}
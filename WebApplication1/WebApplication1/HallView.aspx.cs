﻿using System;
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
    public partial class HallView : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
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
            Label1.Text = "Welcome " + ds.Tables[0].Rows[0]["Type"].ToString() + "!";
        }

        protected void Log(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Start.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[7].FindControl("CheckBox1") as CheckBox);
                string dt = row.Cells[1].Text.ToString();
                string rl = TextBox1.Text.ToString();
                if (status.Checked)
                {
                    updaterow(rl, dt);
                }

            }

        }
        private void updaterow(string rl, string dt)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con.Open();
            string del = "Delete from Hall where Roll='" + rl + "'and Date='" + dt + "'"; 
            cmd.CommandText = del;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Successfully updated!');</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con.Open();
            string query;
            query = "select Roll,Date,Hall,Year,Start,Ending,Dues from Hall where Roll=@Roll";
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Roll", TextBox1.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            sd.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                Button2.Visible = true;
            }
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
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
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
            con.Open();
            string select = "select * from [AdminInfo]where Type=@Type and Password=@Password";
            cmd.CommandText = select;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Type", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            string type = DropDownList1.SelectedItem.Text.Trim();
            if (rd.HasRows)
            {
                Session["user"] = type;
                if(type=="Administration")
                {
                    Response.Redirect("AdministrationHome.aspx");
                }
                else if(type=="Lab")
                {
                    Response.Redirect("Lab.aspx");
                }
                else if (type == "Hall")
                {
                    Response.Redirect("Hall.aspx");
                }
                else if(type=="Department")
                {

                    Response.Redirect("Department.aspx");
                }

            }
            else
            {
                Label1.Text = "Wrong Password!";
            }
            con.Close();

        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRegistration.aspx");

        }
    }
}
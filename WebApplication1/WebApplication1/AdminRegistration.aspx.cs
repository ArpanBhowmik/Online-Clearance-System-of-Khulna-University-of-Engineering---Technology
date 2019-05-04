using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication1
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
           /* string name = HttpContext.Current.User.Identity.Name;
            string id = System.Web.HttpContext.Current.Session.SessionID;
            Response.Write(Session[id].ToString());*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if(DropDownList1.SelectedValue == "-1")
            {
                Label1.Text = "Please select an admin type.";
            }
            else
            {
                string pass1 = TextBox1.Text.ToString();
                string pass2 = TextBox2.Text.ToString();
                if(pass1!=pass2)
                {
                    Label1.Text = "Passwords didn't match!!!";
                }
                else if(pass1=="")
                {
                    Label1.Text = "Please insert your password!!!";
                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                    con.Open();
                    string select = "select * from [AdminInfo]where Type=@Type";
                    string insert = "insert into AdminInfo (Type,Password) values(@Type,@Password)";
                    SqlCommand cm = new SqlCommand();
                    cm.CommandText = select;
                    cm.Parameters.AddWithValue("@Type", DropDownList1.SelectedItem.Text);
                    cm.Connection = con;
                    SqlDataReader rd = cm.ExecuteReader();
                    if(rd.HasRows)
                    {
                        Label1.Text = "Already Registered!!!";
                        con.Close();
                    }
                    else
                    {
                        con.Close();
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regconnect"].ConnectionString);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand(insert, conn);
                        cmd.Parameters.AddWithValue("@Type", DropDownList1.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@Password", TextBox1.Text);
                        cmd.ExecuteNonQuery();

                        conn.Close();
                        Response.Write("<script>alert('Registration Successful!');</script>");



                    }




                }


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace EnvoyDelivery
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null && Session["id"] != null)
            {
                String Utype = Convert.ToString(Session["type"]);
                if (Utype == "U")
                {
                    Session["type"] = "U";
                    Response.Redirect("~/service.aspx");
                }else if (Utype == "A")
                {
                    Response.Redirect("~/Admin/Default.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["PASSWORD"] = Password.Text;
            String CS = ConfigurationManager.ConnectionStrings["EnvoyData"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection("datasource=127.0.0.1;port=3306;username=Collins;password=ca4lala3nasa;"))
            {
                MySqlCommand cmd = new MySqlCommand("Select * from `envoy`.`users` where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    String Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();
                    int id = Convert.ToInt32(dt.Rows[0][0]);
                    
                    if (Utype == "U")
                    {
                        Session["USERNAME"] = UserName.Text;
                        Session["id"] = id;
                        Session["type"] = "U";
                        Response.Redirect("~/service.aspx");
                    }

                    else if (Utype == "A")
                    {
                        Session["USERNAME"] = UserName.Text;
                        Session["type"] = "A";
                        Response.Redirect("~/Admin/Default.aspx");
                    }
                  /*  else if (UserName.Text == "admin" && Password.Text == "123")
                    {
                        Session["USERNAME"] = UserName.Text;
                        Session["type"] = "A";
                        Response.Redirect("~/Admin/CustomerOrders.aspx");
                    }*/
                }
                else
                {
                    lblErr.Text = "Invalid Username or Password !";
                }
            }
        }
    }
}
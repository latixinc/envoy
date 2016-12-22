using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnvoyDelivery
{
    public partial class SignUp : System.Web.UI.Page
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
                }
                else if (Utype == "A")
                {
                    Response.Redirect("~/Admin/CustomerOrders.aspx");
                }
            }
        }

        protected void btSignup_Click(object sender, EventArgs e)
        {

            if (tbUname.Text != "" && tbPass.Text != "" && tbName.Text != "" && TbEmail.Text != "" && tbCpass.Text != "")
            {
                if (tbPass.Text == tbCpass.Text)
                {
                    String CS = ConfigurationManager.ConnectionStrings["EnvoyData"].ConnectionString;
                    try { 
                    using (MySqlConnection con = new MySqlConnection("datasource=127.0.0.1;port=3306;username=Collins;password=ca4lala3nasa;"))
                    {
                        MySqlCommand cmd = new MySqlCommand("Insert into `envoy`.`users` (Username,Password,Email,Name,type) values('" + tbUname.Text + "','" + tbPass.Text + "','" + TbEmail.Text + "','" + tbName.Text + "','U')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMsg.ForeColor = Color.Green;
                        lblMsg.Text = "Registration successfull";
                        Response.Redirect("~/SignIn.aspx");
                    }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not Match";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields are Mandatory";
            }
        }
    }
}
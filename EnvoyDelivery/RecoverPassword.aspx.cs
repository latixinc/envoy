﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnvoyDelivery
{
    public partial class RecoverPassword : System.Web.UI.Page
    {
        String CS = ConfigurationManager.ConnectionStrings["EnvoyData"].ConnectionString;
        String GUIDvalue;
        DataTable dt = new DataTable();
        int Uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (MySqlConnection con = new MySqlConnection("datasource=127.0.0.1;port=3306;username=Collins;password=ca4lala3nasa;"))
            {
                GUIDvalue = Request.QueryString["Uid"];
                if (GUIDvalue != null)
                {
                    MySqlCommand cmd = new MySqlCommand("Select * from ForgotPassRequests where id='" + GUIDvalue + "'", con);
                    con.Open();
                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblMsg.Text = "Your password reset link is invalid or Expired";
                        lblMsg.ForeColor = Color.Red;
                    }

                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    tbNewPass.Visible = true;
                    tbConfirmPass.Visible = true;
                    lblPassword.Visible = true;
                    lblRetypePass.Visible = true;
                    btRecPass.Visible = true;
                }
                else
                {
                    lblMsg.Text = "Your password reset link is invalid or Expired";
                    lblMsg.ForeColor = Color.Red;
                }
            }
        }

        protected void btRecPass_Click(object sender, EventArgs e)
        {
            if (tbNewPass.Text != "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
            {
                using (MySqlConnection con = new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=;"))
                {
                    MySqlCommand cmd = new MySqlCommand("Update Users set Password='" + tbNewPass.Text + "' where Uid='" + Uid + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    MySqlCommand cmd2 = new MySqlCommand("DELETE FROM ForgotPassRequests WHERE Uid='" + Uid + "'", con);
                    cmd2.ExecuteNonQuery();
                    Response.Redirect("~/SignIn.aspx");
                }
            }
        }
    }
}
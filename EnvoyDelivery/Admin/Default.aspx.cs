using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace EnvoyDelivery.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        public int pendingOrders = 0, cancelledOrders = 0, finishedOrders = 0, advert = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] != null)
            {
                if (Session["type"] == "U")
                {
                    Response.Redirect("~/service.aspx");
                }

            }

            else if (Session["type"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }

            MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=root;password=");
            con.Open();
            MySqlCommand com = new MySqlCommand("Select Count(*) from `envoy`.`products` where finished=0", con);
            pendingOrders = Convert.ToInt32(com.ExecuteScalar());
            com.CommandText = "Select Count(*) from `envoy`.`products` where finished=2";
            cancelledOrders = Convert.ToInt32(com.ExecuteScalar());
            com.CommandText = "Select Count(*) from `envoy`.`products` where finished=1";
            finishedOrders = Convert.ToInt32(com.ExecuteScalar());
            com.CommandText = "Select Count(*) from `envoy`.`advert`";
            advert = Convert.ToInt32(com.ExecuteScalar());
            con.Close();
        }

    }
}
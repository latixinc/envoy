using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace EnvoyDelivery.Admin
{
    public partial class CustomerOrders : System.Web.UI.Page
    {
        public String temp = "";
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
            String connString = "datasource=localhost;port=3306;username=root;password=;";
            MySqlConnection conn = new MySqlConnection(connString);
            MySqlCommand com = new MySqlCommand("SELECT * FROM `envoy`.`products` where `finished`=0 ORDER BY `id` DESC", conn);
            conn.Open();
            MySqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                String name = reader.GetString("Name");
                String phone = reader.GetString("PhoneNumber");
                String email = reader.GetString("Email");
                String content = reader.GetString("Content");
                int weight = reader.GetInt32("Weight");
                String pickdate = reader.GetString("PickDate");
                String city = reader.GetString("CityCustomer");
                String state = reader.GetString("StateCustomer");
                String pick = reader.GetString("PickAddress");
                String drop = reader.GetString("DropAddress");
                String plan = reader.GetString("Plan");
                int id = Convert.ToInt32(reader.GetString("Id"));
                temp += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + phone + "</td><td>" + email + "</td><td>" + content + "</td><td>" + weight + "</td><td>" + pickdate + "</td>" +
                    "<td>" + city + "</td><td>" + state + "</td><td>" + pick + "</td><td>" + drop + "</td><td>" + plan + "</td></tr>";
            }
            conn.Close();


        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            
        }

        protected void jkdk_Click(object sender, EventArgs e)
        {
            Session["type"] = null;
            Response.Redirect("~/Default.aspx");
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=");
            MySqlCommand com = new MySqlCommand("UPDATE `envoy`.`products` set `finished` = 1 WHERE Id="+txtFinish.Text, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}
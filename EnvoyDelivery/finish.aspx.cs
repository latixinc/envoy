using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace EnvoyDelivery
{
    public partial class finish : System.Web.UI.Page
    {
        public String temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] != null && Session["id"] != null)
            {
                if (Session["type"] == "A")
                {
                    Response.Redirect("Admin/CustomerOrders.aspx");
                }
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }

            String connString = "datasource=localhost;port=3306;username=root;password=;";
            MySqlConnection conn = new MySqlConnection(connString);
            int id = Convert.ToInt32(Session["id"]);
            MySqlCommand com = new MySqlCommand("SELECT * FROM `envoy`.`products` WHERE `userid` =" + id + " AND `finished`=1 ORDER BY `id` DESC", conn);
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
                temp += "<tr><td>" + name + "</td><td>" + phone + "</td><td>" + email + "</td><td>" + content + "</td><td>" + weight + "</td><td>" + pickdate + "</td>" +
                    "<td>" + city + "</td><td>" + state + "</td><td>" + pick + "</td><td>" + drop + "</td><td>" + plan + "</td></tr>";
            }
            conn.Close();
        }
    }
}
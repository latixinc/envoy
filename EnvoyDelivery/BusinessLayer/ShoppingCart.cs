using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace EnvoyDelivery.BusinessLayer
{
    class ShoppingCart
    {
        public string CityFrom;
        public string CityTo;
        public string Name;
        public string Email;
        public string Content;
        public string CityCustomer;
        public string StateCustomer;
        public string PickAddress;
        public string DropAddress;
        public string Plan;
    
        public String PhoneNumber;
        public int Weight;
        public string PickDate;
        public int PinFrom;
        public int PinTo;
        public int userid;

        public void placeOrder()
        {
            { 
            SqlParameter[] parameters = new SqlParameter[14];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CityFrom", Name, System.Data.SqlDbType.VarChar, 500);
            parameters[1] = DataLayer.DataAccess.AddParameter("@CityTo", Name, System.Data.SqlDbType.VarChar, 500);
            parameters[2] = DataLayer.DataAccess.AddParameter("@PinFrom", Name, System.Data.SqlDbType.Int, 100);
            parameters[3] = DataLayer.DataAccess.AddParameter("@PinTo", Name, System.Data.SqlDbType.Int, 100);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Name", Name, System.Data.SqlDbType.VarChar, 500);
            parameters[5] = DataLayer.DataAccess.AddParameter("@PhoneNumber", PhoneNumber, System.Data.SqlDbType.VarChar, 100);
            parameters[6] = DataLayer.DataAccess.AddParameter("@Email", Email, System.Data.SqlDbType.VarChar, 500);
            parameters[7] = DataLayer.DataAccess.AddParameter("@Content", Content, System.Data.SqlDbType.VarChar, 500);
            parameters[8] = DataLayer.DataAccess.AddParameter("@Weight", Weight, System.Data.SqlDbType.Int, 100);
            parameters[9] = DataLayer.DataAccess.AddParameter("@PickDate", PickDate, System.Data.SqlDbType.VarChar, 500);
            parameters[10] = DataLayer.DataAccess.AddParameter("@CityCustomer", CityCustomer, System.Data.SqlDbType.VarChar, 500);
            parameters[11] = DataLayer.DataAccess.AddParameter("@StateCustomer", StateCustomer, System.Data.SqlDbType.VarChar, 500);
            parameters[12] = DataLayer.DataAccess.AddParameter("@PickAddress", PickAddress, System.Data.SqlDbType.VarChar, 500);

            }
            MySqlConnection conn = new MySqlConnection(@"datasource=127.0.0.1;port=3306;username=root;password=;");
            MySqlCommand com = new MySqlCommand(@"insert into `envoy`.`products` (userid,Name,PhoneNumber,Email,Content,Weight,PickDate,CityCustomer,StateCustomer,PickAddress,DropAddress,Plan)
				 VALUES("+userid+",'" + Name + "','" + PhoneNumber + "','" + Email + "','" + Content + "'," + Weight + ",'" + PickDate + "','" + CityCustomer + "','" + StateCustomer + "','" + PickAddress + "','" + DropAddress + "','"+Plan+"')", conn);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
//            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddNewOrder", parameters);
        }

       /* public DataTable GetAllProducts()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryId", CategoryId, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllOrders", parameters);
            return dt;
        }*/
    }
}

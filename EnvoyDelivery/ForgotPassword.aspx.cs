using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnvoyDelivery
{
    public partial class ForgotPassword : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btPassRec_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["EnvoyData"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection("datasource=127.0.0.1;port=3306;username=Collins;password=ca4lala3nasa;"))
            {
                MySqlCommand cmd = new MySqlCommand("Select * from Users where Email='" + tbEmailId.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    MySqlCommand cmd1 = new MySqlCommand("Insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", con);
                    cmd1.ExecuteNonQuery();

                    //Send Email
                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi" + Username + ",<br/><br/> Click the link below to reset your password<br/><br/> http://localhost:64206/RecoverPassword.aspx?Uid=" + myGUID;
                    MailMessage PassRecMail = new MailMessage("kamsikodi@gmail.com", ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "kamsikodi@gmail.com",
                        Password = "SamuelOhakah"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecMail);

                    lblPassRec.Text = "Check your email to reset your password";
                    lblPassRec.ForeColor = Color.Green;
                }
                else
                {
                    lblPassRec.Text = "Oops Email does not exist in our database";
                    lblPassRec.ForeColor = Color.Red;
                }
            }
        }
    }
}
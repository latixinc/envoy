using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnvoyDelivery
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                lblUser.Text = "<h4>"+Session["USERNAME"].ToString().ToUpper() + "</h4>";
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                //Send Email
                String ToEmailAddress = "kamsikodi@gmail.com";
                String FromEmailAddress = txtEmail.Text;
                String Username = txtName.Text;
                String EmailBody = "From" + FromEmailAddress + "\n" + "Name :" + txtName.Text + "\n" + "Phone No" + txtPhone.Text + "\n" + txtMessage.Text;
                MailMessage PassRecMail = new MailMessage("kamsikodi@gmail.com", ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "EnvoyDelivery Customer Complaint";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "kamsikodi@gmail.com",
                    Password = "***"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);
                lblUserEmail.Text = "Email Sent";
                lblUserEmail.ForeColor = Color.Green;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                lblUserEmail.Text = "Email  Not Sent";
                lblUserEmail.ForeColor = Color.Red;
            }
        }

   
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Session["PASSWORD"] = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}

 
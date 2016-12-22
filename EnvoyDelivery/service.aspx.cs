using EnvoyDelivery.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnvoyDelivery
{
    public partial class service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null && Session["id"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }

            if (Session["USERNAME"] != null)
            {
                lblSuccess.Text = "Welcome " + Session["USERNAME"].ToString() + "";
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
     try { 
            ShoppingCart k = new ShoppingCart()
            {
                Name = txtName.Text,
               PhoneNumber = txtPhone.Text,
               Email = txtEmail.Text,
               Content = txtContent.Text,
               Weight = Convert.ToInt32(txtWeight.Text),
               PickDate = txtPickUpDate.Text,
               CityCustomer = txtCity3.Text,
               StateCustomer = txtState.Text,
               PickAddress = txtPickUpAddress.Text,
               DropAddress = txtDropAddress.Text,
               Plan = txtPlan.Text,
               userid = Convert.ToInt32(Session["id"])
               };
            k.placeOrder();
       
       }
        catch(Exception ex){
           
         }

           // ClearText();

            
        }
        private void ClearText()
        {
           // txtCity = string.Empty;
            txtName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtContent.Text = string.Empty;
            txtWeight.Text = string.Empty;
            txtPickUpDate.Text = string.Empty;
            txtCity3.Text = string.Empty;
            txtState.Text = string.Empty;
            txtPickUpAddress.Text = string.Empty;
            txtDropAddress.Text = string.Empty;
            txtPlan.Text = string.Empty;
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Session["PASSWORD"] = null;
            Response.Redirect("~/Default.aspx");
        }

        protected void btnReset_Click1(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtContent.Text = string.Empty;
            txtWeight.Text = string.Empty;
            txtPickUpDate.Text = string.Empty;
            txtCity3.Text = string.Empty;
            txtState.Text = string.Empty;
            txtPickUpAddress.Text = string.Empty;
            txtDropAddress.Text = string.Empty;
            txtPlan.Text = string.Empty;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Session["PASSWORD"] = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}
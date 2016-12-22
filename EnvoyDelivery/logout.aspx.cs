using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnvoyDelivery
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Session["PASSWORD"] = null;
            Session["id"] = null;
            Session["type"] = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}
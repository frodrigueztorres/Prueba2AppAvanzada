using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaPresentacion
{
    public partial class AdminEncomienda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCamionero.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCamion.aspx");
        }
    }
}
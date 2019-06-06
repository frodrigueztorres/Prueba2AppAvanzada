using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaPresentacion
{
    public partial class AdminCamion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEncomienda.aspx");
        }
        //Revisar Boton Guardar
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            int id_producto = Convert.ToInt32(txt_id_producto.Text);
            string producto = txt_producto.Text;
            string descripcion = txt_descripcion.Text;

            LogicaCamion negocio = new LogicaCamion();
            int resultado = negocio.InsertCamion(id_producto, producto, descripcion);

            if (resultado > 0)
                lbl_msg.Text = "Registro agregado satisfactoriamente";
            else
                lbl_msg.Text = "el registro a ingresar ya existe";
            negocio = null;
        }
    }
}
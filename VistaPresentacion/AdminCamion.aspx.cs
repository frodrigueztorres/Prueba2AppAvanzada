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

        protected void btn_SaveCamion_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            string matricula = txt_MatriculaCamion.Text;
            int potencia = Convert.ToInt32(txt_PotenciaCamion.Text);
            //string descripcion = txt_descripcion.Text;

            LogicaCamion negocio = new LogicaCamion();
            int resultado = negocio.InsertCamion(matricula, potencia, tipo);

            if (resultado > 0)
                lbl_msgCamion.Text = "Registro agregado satisfactoriamente";
            else
                lbl_msgCamion.Text = "el registro a ingresar ya existe";
            negocio = null;
        }

        protected void btn_BackCamion_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEncomienda.aspx");
        }
    }
}
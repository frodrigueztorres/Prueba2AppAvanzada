using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaPresentacion
{
    public partial class AdminCamionCamionero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SaveCamionero_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            int rut = Convert.ToInt32(txt_RutCamionero.Text);
            string dv = txt_DvCamionero.Text;
            string nombre = txt_NombreCamionero.Text;
            int telefono = Convert.ToInt32(txt_TelefonoCamionero.Text);
            string direccion = txt_DireccionCamionero.Text;
            int salario = Convert.ToInt32(txt_SalarioCamionero.Text);
            string poblacion = txt_PoblacionCamionero.Text;

            LogicaCamionero negocio = new LogicaCamionero();
            int resultado = negocio.InsertCamionero(rut, dv, nombre, telefono, direccion, salario, poblacion);

            if (resultado > 0)
                lbl_msgCamionero.Text = "Registro agregado satisfactoriamente";
            else
                lbl_msgCamionero.Text = "El registro a ingresar ya existe";
            negocio = null;
        }

        protected void btn_UpdateCamionero_Click(object sender, EventArgs e)
        {
            int rut = Convert.ToInt32(txt_RutCamionero.Text);
            string dv = txt_DvCamionero.Text;
            string nombre = txt_NombreCamionero.Text;
            int telefono = Convert.ToInt32(txt_TelefonoCamionero.Text);
            string direccion = txt_DireccionCamionero.Text;
            int salario = Convert.ToInt32(txt_SalarioCamionero.Text);
            string poblacion = txt_PoblacionCamionero.Text;

            LogicaCamionero negocio = new LogicaCamionero();
            int resultado = negocio.UpdateCamionero(rut, dv, nombre, telefono, direccion, salario, poblacion);

            if (resultado > 0)
                lbl_msgCamionero.Text = "Registro actualizado satisfactoriamente";
            else
                lbl_msgCamionero.Text = "El registro no se pudo actualizar";
            negocio = null;
        }

        protected void btn_SearchCamionero_Click(object sender, EventArgs e)
        {
            int rut = Convert.ToInt32(txt_RutCamionero.Text);

            gw_GrillaCamionero.DataSource = LogicaCamionero.SearchCamionero(rut);
            gw_GrillaCamionero.DataBind();
            gw_GrillaCamionero.Visible = false;

            txt_RutCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[0].Text;
            txt_DvCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[1].Text;
            txt_NombreCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[2].Text;
            txt_TelefonoCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[3].Text;
            txt_DireccionCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[4].Text;
            txt_SalarioCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[5].Text;
            txt_PoblacionCamionero.Text = gw_GrillaCamionero.Rows[0].Cells[6].Text;
        }

        protected void btn_DeleteCamionero_Click(object sender, EventArgs e)
        {
            int rut = Convert.ToInt32(txt_RutCamionero.Text);

            LogicaCamionCamionero negocio2 = new LogicaCamionCamionero();
            int resultado2 = negocio2.DeleteCamionCamioneroA(rut);

            LogicaCamionero negocio = new LogicaCamionero();
            int resultado = negocio.DeleteCamionero(rut);

            if (resultado > 0 && resultado2 > 0)
                lbl_msgCamionero.Text = "Registro eliminado satisfactoriamente";
            else
                lbl_msgCamionero.Text = "El registro no se pudo eliminar";
            negocio = null;

        }

        protected void btn_CleanCamionero_Click(object sender, EventArgs e)
        {
            //REALIZAR COMANDOS LIMPIAR AL CAMIONERO
        }

        protected void btn_BackCamionero_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEncomienda.aspx");
        }
    }
}
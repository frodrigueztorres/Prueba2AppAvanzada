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
        //GUARDAR DATOS
        protected void btn_SaveCamion_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            string matricula = txt_MatriculaCamion.Text;
            int tipo = Convert.ToInt32(ddl_tipoCamion.SelectedValue);
            int potencia = Convert.ToInt32(txt_PotenciaCamion.Text);

            LogicaCamion negocio = new LogicaCamion();
            int resultado = negocio.InsertCamion(matricula, tipo, potencia);

            if (resultado > 0)
                lbl_msgCamion.Text = "Registro agregado satisfactoriamente";
            else
                lbl_msgCamion.Text = "el registro a ingresar ya existe";
            negocio = null;
        }
        //NAVEGAR PAGINAS
        protected void btn_BackCamion_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEncomienda.aspx");
        }
        //ACTUALIZAR CAMION
        protected void btn_UpdateCamion_Click(object sender, EventArgs e)
        {
            string matricula = txt_MatriculaCamion.Text;
            int tipo = Convert.ToInt32(ddl_tipoCamion.SelectedValue);
            int potencia = Convert.ToInt32(txt_PotenciaCamion.Text);

            LogicaCamion negocio = new LogicaCamion();
            int resultado = negocio.UpdateCamion(matricula, tipo, potencia);

            if (resultado > 0)
                lbl_msgCamion.Text = "Registro actualizado satisfactoriamente";
            else
                lbl_msgCamion.Text = "No se pudo actualizar el registro";
            negocio = null;
        }
        //BUSCAR CAMION
        protected void btn_SearchCamion_Click(object sender, EventArgs e)
        {
            string matricula = txt_MatriculaCamion.Text;

            gw_GrillaCamion.DataSource = LogicaCamion.SearchCamion(matricula);
            gw_GrillaCamion.DataBind();
            gw_GrillaCamion.Visible = false;

            txt_MatriculaCamion.Text = gw_GrillaCamion.Rows[0].Cells[1].Text;
            ddl_tipoCamion.SelectedValue = gw_GrillaCamion.Rows[0].Cells[2].Text;
            txt_PotenciaCamion.Text = gw_GrillaCamion.Rows[0].Cells[3].Text;
        }
        //ELIMINAR CAMION
        protected void btn_DeleteCamion_Click(object sender, EventArgs e)
        {
            string matricula = txt_MatriculaCamion.Text;

            LogicaCamionCamionero negocio2 = new LogicaCamionCamionero();
            int resultado2 = negocio2.DeleteCamionCamioneroB(matricula);

            LogicaCamion negocio = new LogicaCamion();
            int resultado = negocio.DeleteCamion(matricula);

            if (resultado > 0 && resultado2 >0)
                lbl_msgCamion.Text = "Registro eliminado satisfactoriamente";
            else
                lbl_msgCamion.Text = "El registro no se pudo eliminar";
            negocio = null;
            negocio2 = null;
        }
        //LIMPIAR REGISTROS
        protected void btn_CleanCamion_Click(object sender, EventArgs e)
        {
            //Crear Metodo Limpiar
        }
    }
}
using Negocio;
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

        protected void btn_SaveEncomienda_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            int cod_paquete = Convert.ToInt32(txt_CodigoEncomienda.Text);
            string descripcion = txt_DescEncomienda.Text;
            string destinatario = txt_NombreEncomienda.Text;
            string direcdestinatario = txt_DireccionEncomienda.Text;
            int codcomuna = Convert.ToInt32(ddl_ComuEncomienda.SelectedValue);
            int rut = Convert.ToInt32(ddl_CameroEncomienda.SelectedValue);
            int matricula = Convert.ToInt32(ddl_CamionEncomienda.SelectedValue);
            string fecha = Convert.ToString(DateTime.Now);

            LogicaPaquete negocio = new LogicaPaquete();
            int resultado = negocio.InsertPaquete(cod_paquete, descripcion, destinatario, direcdestinatario, codcomuna, rut);

            LogicaCamionCamionero negocio2 = new LogicaCamionCamionero();
            int resultado2 = negocio2.InsertCamionCamionero(rut, matricula, fecha);

            if (resultado > 0 && resultado2 > 0)
                lbl_msgEncomienda.Text = "Registro agregado satisfactoriamente";
            else
                lbl_msgEncomienda.Text = "El registro a ingresar ya existe";
            negocio = null;
        }

        protected void btn_UpdateEncomienda_Click(object sender, EventArgs e)
        {
            int cod_paquete = Convert.ToInt32(txt_CodigoEncomienda.Text);
            string descripcion = txt_DescEncomienda.Text;
            string destinatario = txt_NombreEncomienda.Text;
            string direcdestinatario = txt_DireccionEncomienda.Text;
            int codcomuna = Convert.ToInt32(ddl_ComuEncomienda.SelectedValue);
            int rut = Convert.ToInt32(ddl_CameroEncomienda.SelectedValue);

            LogicaPaquete negocio = new LogicaPaquete();
            int resultado = negocio.UpdatePaquete(cod_paquete, descripcion, destinatario, direcdestinatario, codcomuna, rut);

            if (resultado > 0)
                lbl_msgEncomienda.Text = "Registro actualizado satisfactoriamente";
            else
                lbl_msgEncomienda.Text = "No se pudo actualizar el registro";
            negocio = null;
        }

        protected void btn_SearchEncomienda_Click(object sender, EventArgs e)
        {
            int cod_paquete = Convert.ToInt32(txt_CodigoEncomienda.Text);

            gw_GrillaEncomienda.DataSource = LogicaPaquete.SearchPaquete(cod_paquete);
            gw_GrillaEncomienda.DataBind();
            gw_GrillaEncomienda.Visible = false;

            txt_CodigoEncomienda.Text = gw_GrillaEncomienda.Rows[0].Cells[0].Text;
            txt_DescEncomienda.Text = gw_GrillaEncomienda.Rows[0].Cells[1].Text;
            txt_NombreEncomienda.Text = gw_GrillaEncomienda.Rows[0].Cells[2].Text;
            txt_DireccionEncomienda.Text = gw_GrillaEncomienda.Rows[0].Cells[3].Text;
            ddl_ProvEncomienda.SelectedValue = gw_GrillaEncomienda.Rows[0].Cells[5].Text;
            if (gw_GrillaEncomienda.Rows[0].Cells[6].Text == "&nbsp;")
            {
                ddl_CameroEncomienda.SelectedIndex = 0;
            }
            else
            {
                ddl_CameroEncomienda.SelectedValue = gw_GrillaEncomienda.Rows[0].Cells[6].Text;
            }
            if (gw_GrillaEncomienda.Rows[0].Cells[7].Text == "&nbsp;")
            {
                ddl_CamionEncomienda.SelectedIndex = 0;
            }
            else
            {
                ddl_CamionEncomienda.SelectedValue = gw_GrillaEncomienda.Rows[0].Cells[7].Text;
            }
        }

        protected void btn_CleanEncomienda_Click(object sender, EventArgs e)
        {
            //CREAR LIMPAR ENCOMIENDA
        }

        protected void btn_CamioneroEncomienda_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCamionero.aspx");
        }

        protected void btn_CamionEncomienda_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCamion.aspx");
        }

        protected void btn_DeleteEncomienda_Click(object sender, EventArgs e)
        {
            int cod_paquete = Convert.ToInt32(txt_CodigoEncomienda.Text);

            LogicaPaquete negocio = new LogicaPaquete();
            int resultado = negocio.DeletePaquete(cod_paquete);

            if (resultado > 0)
                lbl_msgEncomienda.Text = "Registro eliminado satisfactoriamente";
            else
                lbl_msgEncomienda.Text = "El registro no se pudo eliminar";
            negocio = null;
        }

        protected void ddl_ProvEncomienda_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_ComuEncomienda.SelectedValue = gw_GrillaEncomienda.Rows[0].Cells[4].Text;
        }
    }
}
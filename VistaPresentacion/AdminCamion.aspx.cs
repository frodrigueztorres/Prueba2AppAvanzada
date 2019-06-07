using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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
        public bool IsNumeric(string num)
        {
            try
            {
                double x = Convert.ToDouble(num);
                //return true;
                if (x > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
        public bool ValidarDatos()
        {
            bool valMatricula = false;
            bool valPotencia = false;
            int Patente;
            //Validacion Matricula
            if (Regex.IsMatch(txt_MatriculaCamion.Text.Substring(0, 4), @"^[a-zA-ZñÑ\s]+$"))
            {
                if (!int.TryParse(txt_MatriculaCamion.Text.Substring(4, txt_MatriculaCamion.Text.Length -4), out Patente) && txt_MatriculaCamion.Text.Length == 6)
                {
                    lbl_ErrorMatricula.Text = "La matricula no es válida (Formato XX0000 o XXXX00)";
                    return valMatricula = false;
                }
                else
                {
                    lbl_ErrorMatricula.Text = "";
                    valMatricula = true;
                }
            }
            else if ((Regex.IsMatch(txt_MatriculaCamion.Text.Substring(0, 2), @"^[a-zA-ZñÑ\s]+$")))
            {
                if (!int.TryParse(txt_MatriculaCamion.Text.Substring(2, txt_MatriculaCamion.Text.Length - 2), out Patente) && txt_MatriculaCamion.Text.Length == 6)
                {
                    lbl_ErrorMatricula.Text = "La matricula no es válida (Formato XX0000 o XXXX00)";
                    return valMatricula = false;
                }
                else
                {
                    lbl_ErrorMatricula.Text = "";
                    valMatricula = true;
                }
                lbl_ErrorMatricula.Text = "La matricula no es válida (Formato XX0000 o XXXX00)";
            }
            else
            {
                lbl_ErrorMatricula.Text = "La matricula no es válida (Formato XX0000 o XXXX00)";
            }
            //Validacion Potencia
            if (txt_PotenciaCamion.Text == "" || txt_PotenciaCamion.Text == null)
            {
                lbl_ErrorPotencia.Text = "Sueldo base no debe estar vacio";
            }
            else if (!IsNumeric(txt_PotenciaCamion.Text))
            {
                lbl_ErrorPotencia.Text = "Sueldo base debe ser un número positivo";
            }
            else
            {
                lbl_ErrorPotencia.Text = "";
                valPotencia = true;
            }
            if (valMatricula && valPotencia)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //GUARDAR DATOS
        protected void btn_SaveCamion_Click(object sender, EventArgs e)
        {
            if (ValidarDatos() == true)
            {
                try
                {
                    if (!Page.IsValid)
                        return;

                    string matricula = txt_MatriculaCamion.Text;
                    int tipo = Convert.ToInt32(ddl_tipoCamion.SelectedValue);
                    int potencia = Convert.ToInt32(txt_PotenciaCamion.Text);

                    LogicaCamion negocio = new LogicaCamion();
                    int resultado = negocio.InsertCamion(matricula, tipo, potencia);

                    if (resultado > 0)
                    {
                        lbl_msgCamion.Text = "Registro agregado satisfactoriamente";
                        CleanData();
                        CleanErrors();
                    }
                    else
                    {
                        lbl_msgCamion.Text = "el registro a ingresar ya existe";
                    }
                    negocio = null;
                }
                catch (Exception)
                {

                    lbl_msgCamion.Text = "El registro no se pudo agregar";
                }

            }
        }
        //NAVEGAR PAGINAS
        protected void btn_BackCamion_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEncomienda.aspx");
        }
        //ACTUALIZAR CAMION
        protected void btn_UpdateCamion_Click(object sender, EventArgs e)
        {
            if (ValidarDatos() == true)
            {
                try
                {
                    string matricula = txt_MatriculaCamion.Text;
                    int tipo = Convert.ToInt32(ddl_tipoCamion.SelectedValue);
                    int potencia = Convert.ToInt32(txt_PotenciaCamion.Text);

                    LogicaCamion negocio = new LogicaCamion();
                    int resultado = negocio.UpdateCamion(matricula, tipo, potencia);

                    if (resultado > 0)
                    {
                        lbl_msgCamion.Text = "Registro actualizado satisfactoriamente";
                        CleanData();
                        CleanErrors();
                    }
                    else
                    {
                        lbl_msgCamion.Text = "No se pudo actualizar el registro";
                    }
                    negocio = null;
                }
                catch (Exception)
                {

                    lbl_msgCamion.Text = "El registro no se pudo actualizar";
                }
            }
            else
            {
                lbl_msgCamion.Text = "El registro no se pudo actualizar";
            }
        }
        //BUSCAR CAMION
        protected void btn_SearchCamion_Click(object sender, EventArgs e)
        {
            string matricula = txt_MatriculaCamion.Text;
            try
            {
                gw_GrillaCamion.DataSource = LogicaCamion.SearchCamion(matricula);
                gw_GrillaCamion.DataBind();
                gw_GrillaCamion.Visible = false;

                txt_MatriculaCamion.Text = gw_GrillaCamion.Rows[0].Cells[1].Text;
                ddl_tipoCamion.SelectedValue = gw_GrillaCamion.Rows[0].Cells[2].Text;
                txt_PotenciaCamion.Text = gw_GrillaCamion.Rows[0].Cells[3].Text;
            }
            catch (Exception)
            {

                lbl_msgCamion.Text = "No se encontró el registro";
            }
        }
        //ELIMINAR CAMION
        protected void btn_DeleteCamion_Click(object sender, EventArgs e)
        {
            string matricula = txt_MatriculaCamion.Text;

            LogicaCamionCamionero negocio2 = new LogicaCamionCamionero();
            int resultado2 = negocio2.DeleteCamionCamioneroB(matricula);

            LogicaCamion negocio = new LogicaCamion();
            int resultado = negocio.DeleteCamion(matricula);

            if (resultado > 0 && resultado2 > 0) {
                lbl_msgCamion.Text = "Registro eliminado satisfactoriamente";
                CleanData();
                CleanErrors();
            }          
            else{
                lbl_msgCamion.Text = "El registro no se pudo eliminar";
            }                
            negocio = null;
            negocio2 = null;
        }
        //LIMPIAR REGISTROS
        protected void btn_CleanCamion_Click(object sender, EventArgs e)
        {
            CleanData();
            CleanLabels();
            CleanErrors();
        }

        public void CleanData()
        {
            txt_MatriculaCamion.Text = "";
            ddl_tipoCamion.SelectedIndex = 0;
            txt_PotenciaCamion.Text = "";           
        }

        public void CleanLabels()
        {
            lbl_msgCamion.Text = "";
        }
        public void CleanErrors()
        {
            lbl_ErrorMatricula.Text = "";
            lbl_ErrorPotencia.Text = "";
        }
    }
}
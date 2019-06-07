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

        public bool IsNumeric(String num)
        {
            try
            {
                double x = Convert.ToDouble(num);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool validacion()
        {
            bool valRut = false;
            bool valDv = false;
            bool valNombre = false;
            bool valTelefono = false;
            bool valDomicilio = false;
            bool valSalario = false;
            bool valPoblacion = false;

            if (txt_RutCamionero.Text == "" || txt_RutCamionero.Text == null)
            {
                MsgRut.Text = "Debe ingresar un valor en campo Rut";
            }
            else if (txt_RutCamionero.Text.Length < 7 || txt_RutCamionero.Text.Length > 8)
            {
                MsgRut.Text = "Debe ingresar solo numeros en el campo rut";
            }
            else if(!IsNumeric(txt_RutCamionero.Text))
            {
                MsgRut.Text = "Debe ingresar solo numeros en el campo rut";
            }
            else
            {
                MsgRut.Text = "";
                valRut = true;
            }

            if(txt_DvCamionero.Text == "" || txt_DvCamionero.Text == null)
            {
                MsgDv.Text = "Debe ingresar un valor en el campo DV";
            }
            else if(txt_DvCamionero.Text.Length > 1)
            {
                MsgDv.Text = "Debe ingresar un valor valido en DV";
            }
            else if(IsNumeric(txt_DvCamionero.Text) || txt_DvCamionero.Text.Contains('k') || txt_DvCamionero.Text.Contains('K'))
            {
                MsgDv.Text = "";
                valDv = true;
            }
            else
            {
                MsgDv.Text = "Debe ingresar un valor valido en DV";
            }

            if(txt_NombreCamionero.Text == "" || txt_NombreCamionero.Text == null)
            {
                MsgNombre.Text = "Debe ingresar un nombre";
            }
            else
            {
                MsgNombre.Text = "";
                valNombre = true;
            }

            if(txt_TelefonoCamionero.Text == "" || txt_TelefonoCamionero.Text == null)
            {
                MsgTelefono.Text = "Debe ingresar un valor en el campo telefono";
            }else if (!IsNumeric(txt_TelefonoCamionero.Text))
            {
                MsgTelefono.Text = "Debe ingresar solo numeros en el campo telefono";
            }
            else
            {
                MsgTelefono.Text = "";
                valTelefono = true;
            }

            if(txt_DireccionCamionero.Text == "" || txt_DireccionCamionero.Text == null)
            {
                MsgDireccion.Text = "Debe ingresar una direccion";
            }
            else
            {
                MsgDireccion.Text = "";
                valDomicilio = true;
            }

            if(txt_SalarioCamionero.Text == "" || txt_SalarioCamionero.Text == null)
            {
                MsgSalario.Text = "Debe ingresar un monto en el campo Salario";
            }else if (!IsNumeric(txt_SalarioCamionero.Text))
            {
                MsgSalario.Text = "Debe ingresar solo numeros";
            }
            else
            {
                MsgSalario.Text = "";
                valSalario = true;
            }

            if(txt_PoblacionCamionero.Text == "" || txt_PoblacionCamionero.Text == null)
            {
                MsgPoblacion.Text = "Debe ingresar un poblacion";

            }
            else
            {
                MsgPoblacion.Text = "";
                valPoblacion = true;
            }

            if(valRut && valDv && valNombre && valTelefono && valDomicilio && valSalario && valPoblacion)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        
        protected void btn_SaveCamionero_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            if(validacion() == true)
            {
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
                {
                    lbl_msgCamionero.Text = "Registro agregado satisfactoriamente";
                    CleanData();
                    CleanErrors();
                }
                else
                {
                    lbl_msgCamionero.Text = "El registro a ingresar ya existe";
                }
                negocio = null;
            }  
        }
        protected void btn_UpdateCamionero_Click(object sender, EventArgs e)
        {
            if(validacion() == true)
            {
                try
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
                    {
                        lbl_msgCamionero.Text = "Registro actualizado satisfactoriamente";
                        CleanData();
                        CleanErrors();
                    }

                    else
                    {
                        lbl_msgCamionero.Text = "El registro no se pudo actualizar";
                    }
                    negocio = null;
                }catch(Exception ex)
                {

                }
               
            }
            
        }
        protected void btn_SearchCamionero_Click(object sender, EventArgs e)
        {
                try
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
                CleanErrors();


                }
                catch
                {
                    MsgRut.Text = "El rut Consultado no existe";
                }
        }

        protected void btn_DeleteCamionero_Click(object sender, EventArgs e)
        {
            int rut = Convert.ToInt32(txt_RutCamionero.Text);

            LogicaCamionCamionero negocio3 = new LogicaCamionCamionero();
            int resultado3 = negocio3.UpdatePaqueteCamionero(rut);

            LogicaCamionCamionero negocio2 = new LogicaCamionCamionero();
            int resultado2 = negocio2.DeleteCamionCamioneroA(rut);

            LogicaCamionero negocio = new LogicaCamionero();
            int resultado = negocio.DeleteCamionero(rut);

            if (resultado > 0 && resultado2 > 0 && resultado3 > 0) {
                lbl_msgCamionero.Text = "Registro eliminado satisfactoriamente";
                CleanData();
                CleanErrors();
            }
                
            else{
                lbl_msgCamionero.Text = "El registro no se pudo eliminar";
            }
            negocio = null;
            negocio2 = null;
            negocio3 = null;

        }

        protected void btn_CleanCamionero_Click(object sender, EventArgs e)
        {
            CleanData();
            CleanErrors();
            CleanLabels();
        }

        protected void btn_BackCamionero_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEncomienda.aspx");
        }
        public void CleanData()
        {
            txt_RutCamionero.Text = "";
            txt_DvCamionero.Text = "";
            txt_NombreCamionero.Text = "";
            txt_TelefonoCamionero.Text = "";
            txt_DireccionCamionero.Text = "";
            txt_SalarioCamionero.Text = "";
            txt_PoblacionCamionero.Text = "";
        }

        public void CleanLabels()
        {
            lbl_msgCamionero.Text = "";
        }
        public void CleanErrors()
        {
            MsgRut.Text = "";
            MsgDireccion.Text = "";
            MsgNombre.Text = "";
            MsgPoblacion.Text = "";
            MsgSalario.Text = "";
            MsgTelefono.Text = "";
            MsgDv.Text = "";
        }
    }
}
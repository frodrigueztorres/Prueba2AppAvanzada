using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Negocio
{
    public class LogicaCamionero
    {
        //Insertar
        public int InsertCamionero(int rut, string dv, string nombre, int telefono, string direccion, int salario, string poblacion)
        {
            AccesoDatosCamionero acceso = new AccesoDatosCamionero();
            return acceso.InsertCamionero(rut, dv, nombre, telefono,direccion,salario, poblacion);
        }
        // Consultar
        public static DataTable SearchCamionero(int rut)
        {
            return AccesoDatosCamionero.ListCamionero(rut);
        }
        // Actualizar
        public int UpdateCamionero(int rut, string dv, string nombre, int telefono, string direccion, int salario, string poblacion)
        {
            AccesoDatosCamionero acceso = new AccesoDatosCamionero();
            return acceso.UpdateCamionero(rut, dv, nombre, telefono, direccion, salario, poblacion);
        }
        // Eliminar
        public int DeleteCamionero(int rut)
        {
            AccesoDatosCamionero acceso = new AccesoDatosCamionero();
            return acceso.DeleteCamionero(rut);
        }
    }
}

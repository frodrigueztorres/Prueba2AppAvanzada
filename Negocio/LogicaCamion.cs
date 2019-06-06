using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Datos;

namespace Negocio
{
    public class LogicaCamion
    {
        public int InsertCamion(string matricula, int tipo, int potencia)
        {
            AccesoDatosCamion acceso = new AccesoDatosCamion();
            return acceso.InsertCamion (matricula, tipo, potencia);
        }
        // Consultar
        public static DataTable SearchCamion (string matricula)
        {
            return AccesoDatosCamion.ListCamion (matricula);
        }
        // Actualizar
        public int UpdateCamion(string matricula, int tipo, int potencia)
        {
            AccesoDatosCamion acceso = new AccesoDatosCamion();
            return acceso.UpdateCamion(matricula, tipo, potencia);
        }
        // Eliminar
        public int DeleteCamion(int id_camion)
        {
            AccesoDatosCamion acceso = new AccesoDatosCamion();
            return acceso.DeleteCamion(id_camion);
        }
    }
}

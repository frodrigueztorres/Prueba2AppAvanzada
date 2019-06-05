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
        public int InsertCamion(int id_camion, string matricula, int tipo, int potencia)
        {
            AccesoDatosCamion acceso = new AccesoDatosCamion();
            return acceso.InsertCamion (id_camion, matricula, tipo, potencia);
        }
        // Consultar
        public static DataTable SearchCamion(int id_camion)
        {
            return AccesoDatosCamion.ListCamion (id_camion);
        }
        // Actualizar
        public int UpdateCamion(int id_camion, string matricula, int tipo, int potencia)
        {
            AccesoDatosCamion acceso = new AccesoDatosCamion();
            return acceso.UpdateCamion(id_camion, matricula, tipo, potencia);
        }
        // Eliminar
        public int DeleteCamion(int id_camion)
        {
            AccesoDatosCamion acceso = new AccesoDatosCamion();
            return acceso.DeleteCamion(id_camion);
        }
    }
}

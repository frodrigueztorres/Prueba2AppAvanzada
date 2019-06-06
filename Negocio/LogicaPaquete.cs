using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Negocio
{
    public class LogicaPaquete
    {
        //Insertar
        public int InsertPaquete(int cod_paquete, string descripcion, string destinatario, string direcdestinatario, int codcomuna, int rut)
        {
            AccesoDatosPaquete acceso = new AccesoDatosPaquete();
            return acceso.InsertPaquete(cod_paquete, descripcion, destinatario, direcdestinatario, codcomuna, rut);
        }
        // Consultar
        public static DataTable SearchPaquete(int cod_paquete)
        {
            return AccesoDatosPaquete.ListPaquete(cod_paquete);
        }
        // Actualizar
        public int UpdatePaquete(int cod_paquete, string descripcion, string destinatario, string direcdestinatario, int codcomuna, int rut)
        {
            AccesoDatosPaquete acceso = new AccesoDatosPaquete();
            return acceso.UpdatePaquete(cod_paquete, descripcion, destinatario, direcdestinatario, codcomuna, rut);
        }
        // Eliminar
        public int DeletePaquete(int cod_paquete)
        {
            AccesoDatosPaquete acceso = new AccesoDatosPaquete();
            return acceso.DeletePaquete(cod_paquete);
        }
    }
}

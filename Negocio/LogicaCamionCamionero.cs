using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio
{
    public class LogicaCamionCamionero
    {
        //Insertar union tablas
        public int InsertCamionCamionero(int rut, int id_camion, string fecha)
        {
            AccesoDatosCamionCamionero acceso = new AccesoDatosCamionCamionero();
            return acceso.InsertCamionCamionero(rut, id_camion, fecha);
        }
        // Eliminar1
        public int DeleteCamionCamioneroA(int rut)
        {
            AccesoDatosCamionCamionero acceso = new AccesoDatosCamionCamionero();
            return acceso.DeleteCamionCamioneroA(rut);
        }
        // Eliminar2
        public int DeleteCamionCamioneroB(string matricula)
        {
            AccesoDatosCamionCamionero acceso = new AccesoDatosCamionCamionero();
            return acceso.DeleteCamionCamioneroB(matricula);
        }
        // Actualizar Tabla Paquete
        public int UpdatePaqueteCamionero(int rut)
        {
            AccesoDatosCamionCamionero acceso = new AccesoDatosCamionCamionero();
            return acceso.UpdatePaqueteCamionero(rut);
        }

    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Datos
{
    public class AccesoDatosCamionCamionero
    {
        //INSERTAR DATOS DEL CAMION CAMIONERO
        public int InsertCamionCamionero(int rut, int id_camion, string fecha)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into Camion_Camionero (Rut, Id_Camion, Fecha) values (@rut, @id_camion, @fecha)";

            cmd.Parameters.AddWithValue("@rut", rut);
            cmd.Parameters.AddWithValue("@id_camion", id_camion);
            cmd.Parameters.AddWithValue("@fecha", fecha);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //ELIMINAR DATOS DEL CAMIONERO A
        public int DeleteCamionCamioneroA(int rut)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete from Camion_Camionero where rut in (select rut from Camionero where Rut = @rut)";

            cmd.Parameters.AddWithValue("@rut", rut);

            return MetodoDatos.ManejoTablas(cmd);
        }

        //ELIMINAR DATOS DEL CAMION B
        public int DeleteCamionCamioneroB(string matricula)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete select * from Camion_Camionero where Id_Camion in (select Id_Camion from Camiones where Matricula = @matricula)";

            cmd.Parameters.AddWithValue("@matricula", matricula);

            return MetodoDatos.ManejoTablas(cmd);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Datos
{
    class AccesoDatosCamionCamionero
    {
        //INSERTAR DATOS DEL CAMION
        public int InsertCamionCamionero(int rut, int id_camion, string fecha)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into Camion_Camionero (Rut, Id_Camion, Fecha) values (@rut, @id_camion, @fecha)";

            cmd.Parameters.AddWithValue("@rut", rut);
            cmd.Parameters.AddWithValue("@matricula", id_camion);
            cmd.Parameters.AddWithValue("@fecha", fecha);

            return MetodoDatos.ManejoTablas(cmd);
        }
        ////MODIFICAR DATOS DEL CAMION
        //public int UpdateCamionCamionero(int rut, int id_camion, string fecha)
        //{
        //    SqlCommand cmd = MetodoDatos.CrearComando();
        //    cmd.CommandText = "update Camion_Camionero set Rut=@rut, Id_Camion=@tipo, Potencia=@potencia where Id_Camion = @id_camion";

        //    cmd.Parameters.AddWithValue("@id_camion", id_camion);
        //    cmd.Parameters.AddWithValue("@matricula", matricula);
        //    cmd.Parameters.AddWithValue("@tipo", tipo);
        //    cmd.Parameters.AddWithValue("@potencia", potencia);

        //    return MetodoDatos.ManejoTablas(cmd);
        //}
        //ELIMINAR DATOS DEL CAMION
        public int DeleteCamion(int id_camion)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete from Camiones where Id_Camion = @id_camion";

            cmd.Parameters.AddWithValue("@id_camion", id_camion);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //BUSCAR Y LISTAR DATOS DEL CAMION
        public static DataTable ListCamion(int id_camion)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "select * from Camiones where  Id_Camion = @id_camion";

            cmd.Parameters.AddWithValue("@id_camion", id_camion);
            return MetodoDatos.ConsultaDatos(cmd);
        }
    }
}

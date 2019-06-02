using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Datos
{
    class AccesoDatosCamion
    {
        //INSERTAR DATOS DEL CAMION
        public int InsertCamion(int id_camion, string matricula, int tipo, int potencia)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into Camiones (Id_Camion, Matricula, Tipo, Potencia) values (@id_camion, @matricula, @tipo, @potencia)";

            cmd.Parameters.AddWithValue("@id_camion", id_camion);
            cmd.Parameters.AddWithValue("@matricula", matricula);
            cmd.Parameters.AddWithValue("@tipo", tipo);
            cmd.Parameters.AddWithValue("@potencia", potencia);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //MODIFICAR DATOS DEL CAMION
        public int UpdateCamion(int id_camion, string matricula, int tipo, int potencia)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "update Camiones set Matricula=@matricula, Tipo=@tipo, Potencia=@potencia where Id_Camion = @id_camion";

            cmd.Parameters.AddWithValue("@id_camion", id_camion);
            cmd.Parameters.AddWithValue("@matricula", matricula);
            cmd.Parameters.AddWithValue("@tipo", tipo);
            cmd.Parameters.AddWithValue("@potencia", potencia);

            return MetodoDatos.ManejoTablas(cmd);
        }
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

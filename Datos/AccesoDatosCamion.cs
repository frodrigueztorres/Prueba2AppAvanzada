using System;
using System.Collections.Generic;

using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Text;

namespace Datos
{
    public class AccesoDatosCamion
    {
        //INSERTAR DATOS DEL CAMION
        public int InsertCamion(string matricula, int tipo, int potencia)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into Camiones (Matricula, Tipo, Potencia) values (@matricula, @tipo, @potencia)";

            cmd.Parameters.Add("@matricula", matricula);
            cmd.Parameters.Add("@tipo", tipo);
            cmd.Parameters.Add("@potencia", potencia);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //MODIFICAR DATOS DEL CAMION
        public int UpdateCamion(string matricula, int tipo, int potencia)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "update Camiones set Tipo=@tipo, Potencia=@potencia where Matricula=@matricula";

            cmd.Parameters.AddWithValue("@matricula", matricula);
            cmd.Parameters.AddWithValue("@tipo", tipo);
            cmd.Parameters.AddWithValue("@potencia", potencia);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //ELIMINAR DATOS DEL CAMION
        public int DeleteCamion(string matricula)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete from Camiones where Matricula=@matricula";

            cmd.Parameters.AddWithValue("@matricula", matricula);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //BUSCAR Y LISTAR DATOS DEL CAMION
        public static DataTable ListCamion(string matricula)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "select * from Camiones where  Matricula = @matricula";

            cmd.Parameters.AddWithValue("@matricula", matricula);
            return MetodoDatos.ConsultaDatos(cmd);
        }
    }
}

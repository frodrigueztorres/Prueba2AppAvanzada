using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Datos
{
    class MetodoDatos
    {
        //CREA LA CADENA DE COMANDO
        public static SqlCommand CrearComando()
        {
            string _cadenaConexion = Configuracion.Cadena;
            SqlConnection _conexion = new SqlConnection();
            _conexion.ConnectionString = _cadenaConexion;
            SqlCommand _comando = new SqlCommand();
            _comando = _conexion.CreateCommand();
            _comando.CommandType = CommandType.Text;
            return _comando;
        }

        public static int ManejoTablas(SqlCommand cmd)
        {
            try
            {
                cmd.Connection.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Connection.Dispose();
                cmd.Connection.Close();
            }

        }
        public static DataTable ConsultaDatos(SqlCommand cmd)
        {
            DataTable _tabla = new DataTable();
            try
            {
                SqlDataAdapter adaptador = new SqlDataAdapter();
                adaptador.SelectCommand = cmd;
                adaptador.Fill(_tabla);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return _tabla;
        }

    }
}

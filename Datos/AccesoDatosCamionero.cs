using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Datos
{
    class AccesoDatosCamionero
    {
        //INSERTAR DATOS DEL CAMIONERO
        public int InsertCamionero(int id_producto, string producto, string descripcion)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into TBL_PRODUCTO  (id_producto, producto, descripcion) values (@id_producto, @producto, @descripcion)";

            cmd.Parameters.Add("@id_producto", id_producto);
            cmd.Parameters.Add("@producto", producto);
            cmd.Parameters.Add("@descripcion", descripcion);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //MODIFICAR DATOS DEL CAMIONERO
        public int UpdateCamionero(int id_producto, string producto, string descripcion)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "update TBL_PRODUCTO set producto=@producto, descripcion=@descripcion where  id_producto = @id_producto";

            cmd.Parameters.Add("@id_producto", id_producto);
            cmd.Parameters.Add("@producto", producto);
            cmd.Parameters.Add("@descripcion", descripcion);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //ELIMINAR DATOS DEL CAMIONERO
        public int DeleteCamionero(int id_producto)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete from TBL_PRODUCTO where  id_producto = @id_producto";

            cmd.Parameters.Add("@id_producto", id_producto);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //BUSCAR Y LISTAR DATOS DEL CAMIONERO
        public static DataTable ListCamionero(int id_producto)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "select * from TBL_PRODUCTO where  id_producto = @id_producto";

            cmd.Parameters.Add("@id_producto", id_producto);
            return MetodoDatos.ConsultaDatos(cmd);
        }
    }
}

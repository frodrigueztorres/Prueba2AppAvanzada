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
        public int InsertCamionero(int rut, string dv, string nombre, int telefono, string direccion, int salario, string poblacion)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into Camionero (Rut, Dv, Nombre, Telefono, Direccion, Salario, Poblacion) values (@rut, @dv, @nombre, @telefono, @direccion, @salario, @poblacion)";

            cmd.Parameters.Add("@rut", rut);
            cmd.Parameters.Add("@dv", dv);
            cmd.Parameters.Add("@nombre", nombre);
            cmd.Parameters.Add("@telefono", telefono);
            cmd.Parameters.Add("@direccion", direccion);
            cmd.Parameters.Add("@salario", salario);
            cmd.Parameters.Add("@poblacion", poblacion);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //MODIFICAR DATOS DEL CAMIONERO
        public int UpdateCamionero(int rut, string dv, string nombre, int telefono, string direccion, int salario, string poblacion)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "update Camionero set Dv=@dv, Nombre=@nombre, Telefono=@telefono, Direccion=@direccion, Salario=@salario, Poblacion=@poblacion where Rut=@rut";

            cmd.Parameters.Add("@rut", rut);
            cmd.Parameters.Add("@dv", dv);
            cmd.Parameters.Add("@nombre", nombre);
            cmd.Parameters.Add("@telefono", telefono);
            cmd.Parameters.Add("@direccion", direccion);
            cmd.Parameters.Add("@salario", salario);
            cmd.Parameters.Add("@poblacion", poblacion);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //ELIMINAR DATOS DEL CAMIONERO
        public int DeleteCamionero(int rut)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete from Camionero where Rut=@rut";

            cmd.Parameters.Add("@rut", rut);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //BUSCAR Y LISTAR DATOS DEL CAMIONERO
        public static DataTable ListCamionero(int rut)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "select * from Camionero where Rut = @rut";

            cmd.Parameters.Add("@rut", rut);
            return MetodoDatos.ConsultaDatos(cmd);
        }
    }
}

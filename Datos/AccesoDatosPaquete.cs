using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Datos
{
    public class AccesoDatosPaquete
    {
        //INSERTAR DATOS DEL PAQUETE
        public int InsertPaquete(int cod_paquete, string descripcion, string destinatario, string direcdestinatario, int codcomuna, int rut)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "insert into Paquete (Cod_Paquete, Descripcion, Destinatario, Direc_Destinatario, Cod_Comuna, Rut) values (@cod_paquete, @descripcion, @destinatario, @direcdestinatario, @codcomuna, @rut)";

            cmd.Parameters.Add("@cod_paquete", cod_paquete);
            cmd.Parameters.Add("@descripcion", descripcion);
            cmd.Parameters.Add("@destinatario", destinatario);
            cmd.Parameters.Add("@direcdestinatario", direcdestinatario);
            cmd.Parameters.Add("@codcomuna", codcomuna);
            cmd.Parameters.Add("@rut", rut);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //MODIFICAR DATOS DEL PAQUETE
        public int UpdatePaquete(int cod_paquete, string descripcion, string destinatario, string direcdestinatario, int codcomuna, int rut)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "update Paquete set Descripcion=@descripcion, Destinatario=@destinatario, Direc_Destinatario=@direcdestinatario, Cod_Comuna=@codcomuna, Rut=@rut where Cod_Paquete=@cod_paquete";

            cmd.Parameters.Add("@cod_paquete", cod_paquete);
            cmd.Parameters.Add("@descripcion", descripcion);
            cmd.Parameters.Add("@destinatario", destinatario);
            cmd.Parameters.Add("@direcdestinatario", direcdestinatario);
            cmd.Parameters.Add("@codcomuna", codcomuna);
            cmd.Parameters.Add("@rut", rut);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //ELIMINAR DATOS DEL PAQUETE
        public int DeletePaquete(int cod_paquete)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "delete from Paquete where Cod_Paquete=@cod_paquete";

            cmd.Parameters.Add("@cod_paquete", cod_paquete);

            return MetodoDatos.ManejoTablas(cmd);
        }
        //BUSCAR Y LISTAR DATOS DEL CAMIONERO
        public static DataTable ListPaquete(int cod_paquete)
        {
            SqlCommand cmd = MetodoDatos.CrearComando();
            cmd.CommandText = "select a.Cod_Paquete, a.Descripcion, a.Destinatario, a.Direc_Destinatario, a.Cod_Comuna, a.Rut, f.Id_Camion from Paquete a join Comuna b on a.Cod_Comuna = b.Cod_Comuna join Provincia c on c.Cod_Provincia = b.Cod_Provincia left join Camionero d on d.Rut = a.Rut left join Camion_Camionero e on e.Rut = d.Rut left join Camiones f on f.Id_Camion = e.Id_Camion where Cod_Paquete=@cod_paquete";

            cmd.Parameters.Add("@cod_paquete", cod_paquete);

            return MetodoDatos.ConsultaDatos(cmd);
        }
    }
}

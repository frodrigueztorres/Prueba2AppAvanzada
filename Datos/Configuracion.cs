using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Datos
{
    class Configuracion
    {
        static string cadenaConexion = @"Data Source=FELIPEAE3C\SQLEXPRESS;Initial Catalog=Prueba3;Integrated Security=True";

        public static string Cadena
        {
            get
            {
                return cadenaConexion;
            }
        }
    }
}

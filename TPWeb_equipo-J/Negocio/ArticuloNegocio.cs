using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    internal class ArticuloNegocio
    {
        public List<Articulo> ListaArticuloSP()
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("spListarArticulos");
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> ListaArticuloSP()
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();
            List<Imagen> listaDeImagenes = new List<Imagen>();
            ImagenNegocio ImagenNegocio = new ImagenNegocio();

            try
            {
                datos.setearProcedimiento("storepListarArt");
                
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.Id = (int)datos.Lector["ArticuloId"];
                    aux.CodigoArticulo = (string)datos.Lector["CodigoArticulo"];
                    aux.NombreArticulo = (string)datos.Lector["NombreArticulo"];
                    aux.DescripcionArticulo = (string)datos.Lector["DescripcionArticulo"];
                    aux.Precio = Math.Round((decimal)datos.Lector["Precio"],0);

                    aux.Marca = new Marca();
                    aux.Marca.Id = (int)datos.Lector["IdMarca"];
                    aux.Marca.DescripcionMarca = (string)datos.Lector["DescripcionMarca"];

                    aux.Categoria = new Categoria();
                    aux.Categoria.Id = (int)datos.Lector["IdCategoria"];
                    aux.Categoria.DescripcionCategoria = (string)datos.Lector["DescripcionCategoria"];

                    aux.Imagenes = ImagenNegocio.listarImagenesId(aux.Id);

                    

                    lista.Add(aux);
                }
                return lista;

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { 
                datos.cerrarConexion();
            
            }

        }
    }
}

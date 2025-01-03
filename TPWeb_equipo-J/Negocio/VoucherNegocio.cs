using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
namespace Negocio
{
    public class VoucherNegocio
    {
        public List<Voucher> listarVoucher(string codigo)
        {
            
            List <Voucher> listaVouchers = new List<Voucher>();
            AccesoDatos accesoDatos  = new AccesoDatos();

            try
            {
                accesoDatos.setearConsulta("Select CodigoVoucher, IdCliente, FechaCanje, IdArticulo  from Vouchers");
                accesoDatos.ejecutarLectura();
                while (accesoDatos.Lector.Read())
                {
                    Voucher voucher = new Voucher();
                    voucher.CodigoVoucher = (string)accesoDatos.Lector["CodigoVoucher"];
                    voucher.IdCliente = (int)accesoDatos.Lector["IdCliente"];
                    voucher.FechaCanje = (DateTime)accesoDatos.Lector["FechaCanje"];
                    voucher.IdArticulo = (int)accesoDatos.Lector["IdArticulo"];

                    listaVouchers.Add(voucher);
                }
                return listaVouchers;

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();   
            }
        }
    }
}

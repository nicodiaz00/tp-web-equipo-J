using Antlr.Runtime.Misc;
using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class _Default : Page
    {
        private List<Voucher> listadoVoucher = new List<Voucher>(); 

        private Voucher encontrarCupon(string codigo, List<Voucher> listadoVoucher)
        {
            Voucher voucher = null;
            foreach(Voucher cupon in listadoVoucher)
            {
                if(cupon.CodigoVoucher.ToString() == codigo)
                {
                    voucher = cupon;
                    Session["voucher"] = cupon;
                    break;
                }
            }
            return voucher;
        }
        private void cuponUsado(Voucher cupon)
        {
            if (cupon.IdCliente == -1)
            {
                
                Response.Redirect("Articulos.aspx", true);
            }
            else
            {
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listadoVoucher = new List<Voucher>();
                VoucherNegocio voucherNegocio = new VoucherNegocio();
                listadoVoucher = voucherNegocio.listarVoucher();
                Session["listadoVoucher"] = listadoVoucher;   //SE GUARDA EN SESSION EL LISTADO DE CUPONES.               
            }
        }
        protected void btnCanjearCupon_Click(object sender, EventArgs e)
        {
            List<Voucher> vouchers = new List<Voucher>();
            Voucher voucher = new Voucher();    

            if (Session["listadoVoucher"]!= null)
            {
                vouchers = (List<Voucher>)Session["listadoVoucher"]; // RECUPERO EL LISTADO DE LA SESSION PARA PODER ENCONTRAR EL CUPON

                voucher = encontrarCupon(txtVoucher.Text, vouchers);

                if (voucher != null)
                {
                    cuponUsado(voucher);
                }
                else
                {
                    Response.Redirect("Error.aspx", false);
                }
                
              
            }
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("ValidacionCliente.aspx", false);
        }

       
    }
}
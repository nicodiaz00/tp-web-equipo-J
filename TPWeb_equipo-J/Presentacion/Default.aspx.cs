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
        private List<Voucher> listadoVoucher;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listadoVoucher = new List<Voucher>();
                VoucherNegocio voucherNegocio = new VoucherNegocio();
                listadoVoucher = voucherNegocio.listarVoucher();

                foreach (Voucher voucher in listadoVoucher)
                {
                    Console.WriteLine(voucher.CodigoVoucher.ToString());
                }
            }
            
            

        }

        protected void btnCanjearCupon_Click(object sender, EventArgs e)
        {

        }
    }
}
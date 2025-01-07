using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Microsoft.Ajax.Utilities;
using Negocio;

namespace Presentacion
{
    public partial class Error : System.Web.UI.Page
    {
        private Voucher voucher { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                if (Session["voucher"] != null)
                {
                    voucher = (Voucher)Session["voucher"];
                    if (voucher.IdCliente != -1 && voucher.IdArticulo != -1)
                    {
                        lblerror.Text = " EL voucher ya fue canjeado";
                    }
                }
                else
                {
                    lblerror.Text = "Codigo incorrecto";
                }
                
                 
                
            }
        }

        protected void btnVolverInicio_Click(object sender, EventArgs e)
        {
            Session["voucher"] = null;
            Response.Redirect("Default.aspx", false);
            
        }
    }
}
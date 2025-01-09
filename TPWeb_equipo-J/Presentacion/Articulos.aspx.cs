using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


namespace Presentacion
{
    public partial class Articulos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulo = negocio.ListaArticuloSP();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulo;
                repRepetidor.DataBind();
                
                
                //aca deberiamos mostrar la lista de articulos para que el usuario pueda elegir
            }
        }

        protected void btnQuieroEste_Click(object sender, EventArgs e)
        {
            Response.Redirect("PromoForm.aspx", false);
        }

        protected void brnQuieroEste_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}
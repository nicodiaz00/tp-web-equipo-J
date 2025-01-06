using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class Articulos : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //aca deberiamos mostrar la lista de articulos para que el usuario pueda elegir
            }
        }

        protected void btnQuieroEste_Click(object sender, EventArgs e)
        {
            Response.Redirect("PromoForm.aspx", false);
        }
    }
}
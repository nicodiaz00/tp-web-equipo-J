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
    public partial class FormularioRegistro : System.Web.UI.Page
    {
        public List <Cliente> listaClientes { get; set; }

        public Cliente encontrarCliente(string documento)
        {
            Cliente clienteAux = null;
            foreach (Cliente cliente in (List<Cliente>)Session["listaClientes"])
            {
                if (documento == cliente.Dni.ToString())
                {
                    

                    clienteAux = cliente;
                    break;

                }
            }
            return clienteAux;
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                listaClientes = new List <Cliente> ();
                ClienteNegocio clienteNegocio = new ClienteNegocio ();

                listaClientes = clienteNegocio.listarClientes();

                Session["listaClientes"] = listaClientes;

                
                
            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            if(encontrarCliente(txtDocumento.Text) != null)
            {
                lblMensajeRegistro.Text = "estas registrado";
            }
        }
    }
}
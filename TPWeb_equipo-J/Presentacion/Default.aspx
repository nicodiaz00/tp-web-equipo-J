<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentacion._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Lista voucher</h1>
            
        </section>
        <section class="row">
            
            <div class="col-12">
                <div class="mb-4">
                    <label for="txtVoucher" class="form-label">Canjea el codigo</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtVoucher"></asp:TextBox>
                    <asp:Button Text="Canjear Cupon" runat="server" ID="btnCanjearCupon" OnClick="btnCanjearCupon_Click"/>
                    <asp:Label Text="" runat="server" ID="lblMensaje" />
                    
                </div>
                <div class="mb-4"> <!--boton de prueba para viajar a registro formulario hasta tener logica de articulos -->
                    <asp:Button Text="viajar a registro" runat="server" ID="btnRegistro" OnClick="btnRegistro_Click" /> 
                </div>
                

            </div>
            
        </section>

        
    </main>

</asp:Content>

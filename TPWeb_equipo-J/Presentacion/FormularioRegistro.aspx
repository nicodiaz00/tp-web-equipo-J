<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioRegistro.aspx.cs" Inherits="Presentacion.FormularioRegistro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h2>Ingresa tu Dni</h2>
            <asp:TextBox runat="server" ID="txtDocumento"></asp:TextBox>
            <asp:Button Text="Ingresar" runat="server" ID="btnRegistrarse" OnClick="btnRegistrarse_Click" />

            <div class="contenedorRegistro">
                <h2>Registrate</h2>
                
                <asp:Label ID="lblMensajeRegistro" Text="" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Presentacion.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class ="col-12">
            <asp:Label runat="server" ID="lblerror" Text=""></asp:Label>
            <asp:Button  runat="server" ID="btnVolverInicio" OnClick="btnVolverInicio_Click" Text="Volver"/>
        </div>
    </div>

</asp:Content>

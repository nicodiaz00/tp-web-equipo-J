<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="Presentacion.Articulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row row-cols-1 row-cols-md-3 g-4">
       <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("Imagenes") %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("NombreArticulo")  %></h5>
                            <p class="card-text"><%#Eval("DescripcionArticulo")   %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

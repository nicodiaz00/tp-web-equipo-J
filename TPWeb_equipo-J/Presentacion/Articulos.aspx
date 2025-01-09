<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="Presentacion.Articulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("Imagenes") %>" class="card-img-top" alt="...">

<%--                        <div id="carousel<%# Eval("Id") %>" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <% 

                                    List<Dominio.Imagen> imagenes = (List<Dominio.Imagen>)Eval("Imagenes");
                                    for (int i = 0; i < imagenes.Count; i++)
                                    {
                                        string activeClass = i == 0 ? "active" : "";
                                %>
                                <div class="carousel-item <%= activeClass %>">
                                    <img src="<%= imagenes[i].ImagenUrl %>" class="d-block w-100" alt="...">
                                </div>
                                <% } %>
                            </div>
                            <!-- Controles del carrusel -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#carousel<%# Eval("Id") %>" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carousel<%# Eval("Id") %>" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>--%>

                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("NombreArticulo")  %></h5>
                            <p class="card-text"><%#Eval("DescripcionArticulo")   %></p>
                            <asp:Button ID="brnQuieroEste" runat="server" Text="Quiero este!!!" CssClass=" btn btn-primary" OnClick="brnQuieroEste_Click" CommandArgument='<%#Eval("Id") %>' CommandName="ArticuloId"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

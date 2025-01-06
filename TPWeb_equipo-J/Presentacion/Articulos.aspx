<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="Presentacion.Articulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card" style="width: 18rem;">
        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://acdn.mitiendanube.com/stores/001/040/110/products/ri178-d847760cabdb7652a216962881798843-480-0.jpg" class="d-block w-100" alt="Imagen 1">
                </div>
                <div class="carousel-item">
                    <img src="https://www.dexter.com.ar/on/demandware.static/-/Sites-365-dabra-catalog/default/dw387c6c5a/products/AD_GU8826/AD_GU8826-1.JPG" class="d-block w-100" alt="Imagen 2">
                </div>
                <div class="carousel-item">
                    <img src="https://acdn.mitiendanube.com/stores/001/163/953/products/mochila-river-gde-21-11dea84792ef66135816881361376456-1024-1024.jpg" class="d-block w-100" alt="Imagen 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            <div class="card-body" style=" text-align:center">
                <h5 class="card-title">Mochila River Plate</h5>
                <p class="card-text">La mejor mochila, la mochila del campeon!</p>
                <asp:Button CssClass="btn btn-primary" ID="btnQuieroEste" OnClick="btnQuieroEste_Click" runat="server" Text="Quiero este!" />                
            </div>
        </div>
    </div>

    
</asp:Content>

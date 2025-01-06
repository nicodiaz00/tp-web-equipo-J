<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="Presentacion.Articulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center">
        <div class="row">
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <div id="carouselPremio01" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
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
                        <div class="card-body" style="text-align: center">
                            <h5 class="card-title">Mochila River Plate</h5>
                            <p class="card-text">La mejor mochila, mochila escolar urbana de River Plate. La mochila del campeon!</p>
                            <asp:Button CssClass="btn btn-primary" ID="btnQuieroEste" OnClick="btnQuieroEste_Click" runat="server" Text="Quiero este!" />
                        </div>
                    </div>

                </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <div id="carouselPremio02" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="https://www.musicosas.com.ar/wp-content/uploads/2024/07/29687_4-5.jpg" class="d-block w-100" alt="Imagen 1">
                            </div>
                            <div class="carousel-item">
                                <img src="https://www.musicosas.com.ar/wp-content/uploads/2024/07/29748_4-5.jpg" class="d-block w-100" alt="Imagen 2">
                            </div>
                            <div class="carousel-item">
                                <img src="https://www.musicosas.com.ar/wp-content/uploads/2024/07/29744_4-5.jpg" class="d-block w-100" alt="Imagen 3">
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
                        <div class="card-body" style="text-align: center">
                            <h5 class="card-title">Auricular Gamer A1S Rojo</h5>
                            <p class="card-text">Los auriculares A1S Rojo se posicionan como una opción atractiva para los gamers.</p>
                            <asp:Button CssClass="btn btn-primary" ID="btnEste" OnClick="btnQuieroEste_Click" runat="server" Text="...y este!!" />
                        </div>
                    </div>

                </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <div id="carouselPremio03" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="https://tienda.starware.com.ar/wp-content/uploads/2021/07/mouse-gamer-profesional-g5-6d-usb-pro-gamer-3200dpi-led-7-colores-2324-3906-768x768.jpg" class="d-block w-100" alt="Imagen 1">
                            </div>
                            <div class="carousel-item">
                                <img src="https://tienda.starware.com.ar/wp-content/uploads/2021/07/mouse-gamer-profesional-g5-6d-usb-pro-gamer-3200dpi-led-7-colores-2324-3907-600x598.jpg" class="d-block w-100" alt="Imagen 2">
                            </div>
                            <div class="carousel-item">
                                <img src="https://tienda.starware.com.ar/wp-content/uploads/2021/07/mouse-gamer-profesional-g5-6d-usb-pro-gamer-3200dpi-led-7-colores-2324-3908-600x600.jpg" class="d-block w-100" alt="Imagen 3">
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
                        <div class="card-body" style="text-align: center">
                            <h5 class="card-title">Mouse Gamer Profesional</h5>
                            <p class="card-text">Diseño de posición de tecla 6D recién actualizado, funcionamiento rápido.</p>
                            <asp:Button CssClass="btn btn-primary" ID="btnEsteTambien" OnClick="btnQuieroEste_Click" runat="server" Text="...y este también!!!" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>








</asp:Content>

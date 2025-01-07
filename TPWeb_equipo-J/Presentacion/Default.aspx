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
                    
                </div>
                
                

            </div>
            
        </section>

        
    </main>

</asp:Content>

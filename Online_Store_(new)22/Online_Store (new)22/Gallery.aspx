<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Page.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="\js\Gallery.js"></script>
    <link rel="stylesheet" type="text/css" href="\css\Gallery_of_Products.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincnt" runat="Server">
    <div class="container">
        <div class="row">
            <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1 class="gallery-title">Gallery</h1>
            </div>

            <br />
            <br />
            <br />
            <asp:Repeater ID="RptProd" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>

                    <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                        <img class="img-responsive" src="\images\<%#Eval("PicName")%>" />
                    </div>

                </ItemTemplate>
                <FooterTemplate>
                    </div>
                         </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>


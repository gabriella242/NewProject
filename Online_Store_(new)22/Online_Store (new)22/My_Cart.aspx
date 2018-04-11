<%@ Page Title="" Language="C#" MasterPageFile="~/User_IF.master" AutoEventWireup="true" CodeFile="My_Cart.aspx.cs" Inherits="My_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://fonts.googleapis.com/css?family=Risque" rel="stylesheet" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="\css\My_Cart.css" />

    <title>My Cart</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincnt2" runat="Server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-xs-10">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <div class="row">
                                <div class="col-xs-6">
                                    <h5><span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</h5>
                                </div>
                                <div class="col-xs-6">
                                    <button type="button" class="btn btn-primary btn-sm btn-block" id="cont">
                                        <span class="glyphicon glyphicon-share-alt"></span>Continue shopping
							
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Repeater ID="RptProd" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-2">
                                        <img class="img-responsive" src="\images\<%#Eval("PicName")%>">
                                    </div>
                                    <div class="col-xs-4">
                                        <h4 class="product-name"><strong><%#Eval("Pname")%></strong></h4>
                                        <h4><small><%#Eval("shortdesc")%></small></h4>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="col-xs-6 text-right">
                                            <h6><strong><%#Eval("price")%><span class="text-muted">   x  </span></strong></h6>
                                        </div>
                                        <div class="col-xs-4">
                                            <input type="text" class="form-control input-sm" value="1" id="count">
                                        </div>
                                        <div class="col-xs-2">
                                            <a href='AddTocart.aspx?op=remove&Pid=<%#Eval("pid")%>' class="btn btn-link btn-xs">
                                                <span class="glyphicon glyphicon-trash"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                            </div>

                        </ItemTemplate>
                        <FooterTemplate>
                            </div>
                        </div>
                        </FooterTemplate>

                    </asp:Repeater>
                    <div class="row">
                        <div class="text-center">
                            <div class="col-xs-9">
                            </div>
                            <div class="col-xs-3">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer" style="width: 83%">
                    <div class="row text-center">
                        <div class="col-xs-9">
                            <h4 class="text-right">Total <strong>
                                <asp:Literal ID="tot" runat="server"></asp:Literal></strong></h4>
                        </div>
                        <div class="col-xs-3">
                            <button type="button" id="chkout" class="btn btn-success btn-block">
                                Checkout
						
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        document.getElementById("cont").onclick = function () {
            location.href = "Product_List.aspx";
        };
        document.getElementById("chkout").onclick = function () {
            location.href = "Order.aspx";
        };
    </script>
</asp:Content>


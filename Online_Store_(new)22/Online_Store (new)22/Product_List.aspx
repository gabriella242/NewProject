<%@ Page Title="" Language="C#" MasterPageFile="~/User_IF.master" AutoEventWireup="true" CodeFile="Product_List.aspx.cs" Inherits="Products_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://fonts.googleapis.com/css?family=Pacifico&subset=latin-ext,vietnamese" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&subset=latin-ext,vietnamese" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
    <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
    <script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
    <script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
    <meta charset='UTF-8'>
    <meta name="robots" content="noindex">
    <link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
    <link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
    <link rel="canonical" href="https://codepen.io/ericwinton/pen/jqKyyq?depth=everything&order=popularity&page=7&q=product&show_forks=false" />
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
    <link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative|Happy+Monkey" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="\css\List_of_products.css" />

    <title>Online Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincnt2" runat="Server">


    <div class="container" id="formContainer">
        <div id="enquirypopup" class="modal fade in" role="dialog">
            <div class="modal-dialog">


                <div class="modal-content row">
                    <div class="modal-header custom-modal-header">
                        <button type="button" class="close" data-dismiss="modal">×</button>

                        <h4 class="modal-title">Login or <a href="Home_Registration.aspx">Sign up</a></h4>
                    </div>
                    <div class="modal-body">
                        <div class="omb_login">
                            <form name="info_form" class="form-inline" runat="server" method="post" id="login">

                                <div class="form-group col-sm-12">
                                    <asp:TextBox ID="username" runat="server" placeholder="Username" name="loginEmail" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-sm-12">
                                    <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password" name="loginPass" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-sm-12">
                                    <asp:Button ID="login_button" class="btn btn-lg btn-primary btn-block" runat="server" Text="Login" OnClick="login_button_Click" />
                                </div>
                                <div class="form-group col-sm-12">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </div>
                                <div class="form-group col-sm-12">
                                    <div class="row omb_row-sm-offset-3 omb_loginOr">

                                        <hr class="omb_hrOr" />
                                        <span class="omb_spanOr">or</span>
                                    </div>
                                </div>
                                <div class="form-group col-sm-12">
                                    <div class="form-group col-sm-6">
                                        <asp:Button ID="register" class="btn btn-lg btn-block omb_btn-twitter" runat="server" Text="Register" OnClick="Button1_Click2" />
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <asp:Button ID="Button2" class="btn btn-lg btn-block omb_btn-google" runat="server" Text="Home" OnClick="Button1_Click1" />
                                    </div>
                                </div>
                                <div class="form-group col-sm-12">
                                    <p class="omb_forgotPwd">
                                        <a href="#">Forgot password?</a>
                                    </p>
                                </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="container">
        <div class="row" id="search">
            <div class="form-group col-xs-9">
                <input class="form-control" id="filter" type="text" placeholder="search" runat="server" />
            </div>
            <div class="form-group col-xs-3">
                <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-block btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="row" id="filter2">
            <div class="form-group col-xs-9">
                <asp:DropDownList ID="pr_search" AutoPostBack="True" OnSelectedIndexChanged="Selection_Ch" class="filter-make form-control-lg" runat="server">
                    <asp:ListItem Value="1"> All </asp:ListItem>
                    <asp:ListItem Value="500"> Under $500 </asp:ListItem>
                    <asp:ListItem Value="1500"> $500 to $1500 </asp:ListItem>
                    <asp:ListItem Value="1501"> $1500+ </asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <strong id="msg2">
            <asp:Label ID="msg" runat="server"></asp:Label></strong>

    </div>

    <br />
    <div class="container" id="productsContainer">
        <h4>NEW COLLECTION</h4>
        <div class="row">
            <asp:Repeater ID="RptProd" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6">
                        <span class="thumbnail">
                            <a href='Product_view.aspx?Pid=<%#Eval("pid")%>'>
                                <img src="\Gallery\<%#Eval("Prodview")%>" /></a>
                            <h4><strong><%#Eval("Pname")%></strong></h4>
                            <div class="ratings">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                            </div>
                            <p><%#Eval("shortdesc")%></p>
                            <hr class="line">
                            <br />
                            <br />
                            <div class="rowproduct">
                                <div class="col-md-6 col-sm-6">
                                    <p class="price">$<%#Eval("price")%></p>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <a href='AddTocart.aspx?Pid=<%#Eval("pid")%>' class="btn btn-info right">BUY ITEM</a>
                                </div>
                            </div>
                        </span>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                         </div>

                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>

    <br />
    <br />
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
            function popup() {
                $('#enquirypopup').modal('show');
            };
    </script>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User_IF.master" AutoEventWireup="true" CodeFile="Product_view.aspx.cs" Inherits="Product_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="\css\Prod_view.css" />
    <script type="text/javascript" src="\js\Prod_view.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincnt2" runat="Server">
    <form id="form" runat="server">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="RptProd" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-xs-4 item-photo">
                            <img style="max-width: 100%;" src="\Gallery\<%#Eval("Prodview")%>" />
                        </div>
                        <div class="col-xs-5" style="border: 0px solid gray">
                            <h3><%#Eval("Pname")%></h3>
                            <h5 style="color: #337ab7">Product ID:<small style="color: #337ab7"><%#Eval("pid")%></small></h5>

                            <h6 class="title-price"><small>Price</small></h6>
                            <h3 style="margin-top: 0px;">$<%#Eval("price")%></h3>

                            <div class="section">
                                <h6 class="title-attr" style="margin-top: 15px;"><small>COLOR</small></h6>
                                <div>
                                    <div class="attr" style="width: 25px; background: #5a5a5a;"></div>
                                    <div class="attr" style="width: 25px; background: white;"></div>
                                </div>
                            </div>
                            <div class="section" style="padding-bottom: 20px;">
                                <h6 class="title-attr"><small>Quantity</small></h6>
                                <div>
                                    <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                                    <input value="1" />
                                    <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                                </div>
                            </div>

                            <div class="section" style="padding-bottom: 20px;">
                                <asp:LinkButton ID="LinkButton1" runat="server" href='AddTocart.aspx' CssClass="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</asp:LinkButton>
                                <br />
                                <br />
                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" href='Product_List.aspx'>Continue shopping</asp:LinkButton>
                                <h6><a><span class="glyphicon glyphicon-heart-empty" style="cursor: pointer;"></span>Recommended</a></h6>
                            </div>
                        </div>

                        <div class="col-xs-9">
                            <ul class="menu-items">
                                <li class="active">Description</li>
                            </ul>
                            <div style="width: 100%; border-top: 1px solid silver">
                                <p style="padding: 15px;">
                                    <small>
                                        <%#Eval("longdesc")%>
                            </small>
                                </p>
                                <small>
                                    <ul>
                                        <li>Computerized telescope automatically locates thousands of celestial objects using the NexStar+ hand control.</li>
                                        <li>Follow the simple SkyAlign alignment procedure and you’re ready to observe in minutes!</li>
                                        <li>Large 114 mm Newtonian reflector offers the most light-gathering ability in the LCM telescope family.</li>
                                        <li>Not sure what to observe? Press the Sky Tour button and your telescope generates a list of the best objects currently visible.</li>
                                        <li>Comes with everything you need to get started with astronomy, including 2 eyepieces and a full-height tripod.</li>
                                        <li>All brass optical tube, altazimuth mount, tripod hardware</li>
                                        <li>Brass tripod accessory tray</li>
                                        <li>Erect Image Viewing through the telescope</li>
                                        <li>Control your telescope via integrated WiFi using the free Celestron SkyPortal app for iPhone, iPad, and Android devices</li>
                                        <li>The Astro Fi 130 mm Newtonian with mirror glass provides outstanding views of the Moon, planets, nebulae, and more</li>
                                        <li>The large 130 mm aperture offers the best resolution and the short focal length gives you incredibly wide fields of view</li>
                                        <li>Accessory tray holds 2 x 1.25” eyepieces, miscellaneous accessories, including a rubber-lined area for a smart phone or small tablet</li>
                                        <li>Available in white or black</li>
                                    </ul>
                                </small>
                            </div>
                        </div>
                        </div>
        </div>
  </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                         </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</asp:Content>


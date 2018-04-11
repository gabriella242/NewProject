<%@ Page Title="" Language="C#" MasterPageFile="~/User_IF.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="\css\Order.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincnt2" runat="Server">
    <div class="container">
        <div class="row">
            <br>
            <div class="col-xs-6 col-md-3"></div>
            <div class="col-xs-6 col-md-12">
                <div class="col-md-12">
                    <div class="col-md-3"></div>
                    <div class="col-md-8" style="align-content: center">
                        <div class="panel panel-default" style="width: 75%; text-align: center">
                            <div class="panel-heading text-center">
                                <h4>Review Order</h4>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-12">
                                    <strong>Tax (Included)</strong>
                                    <div class="pull-right">
                                        <span>$</span><span>50.00</span>
                                    </div>
                                    <hr>
                                </div>
                                <div class="col-md-12">
                                    <strong>Shipping</strong>
                                    <div class="pull-right">
                                        <span>FREE</span>
                                    </div>
                                    <hr>
                                </div>
                                <div class="col-md-12">
                                    <strong>Order Total</strong>
                                    <div class="pull-right">
                                        <span>$</span>
                                        <asp:Literal ID="ltrmsg" runat="server"></asp:Literal>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>

            <div class="col-xs-6 col-md-3"></div>
            <div class="row">
                <div class="col-xs-6 col-md-3"></div>
                <div class="col-xs-6 col-md-6">
                    <div class="panel panel-default credit-card-box">
                        <div class="panel-heading display-table">
                            <div class="row display-tr">
                                <h3 class="panel-title display-td">Payment Details</h3>
                                <div class="display-td">
                                    <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="POST" action="javascript:void(0);" runat="server">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label for="cardNumber">CARD NUMBER</label>
                                            <div class="input-group">
                                                <input
                                                    id="CCnumber"
                                                    type="tel"
                                                    class="form-control"
                                                    name="cardNumber"
                                                    placeholder="Valid Card Number" />
                                                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7 col-md-7">
                                        <div class="form-group">
                                            <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                            <input
                                                type="tel"
                                                class="form-control"
                                                name="cardExpiry"
                                                placeholder="MM / YY" />
                                        </div>
                                    </div>
                                    <div class="col-xs-5 col-md-5 pull-right">
                                        <div class="form-group">
                                            <label for="cardCVC">CV CODE</label>
                                            <input
                                                type="tel"
                                                class="form-control"
                                                name="cardCVC"
                                                placeholder="CVC" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label for="couponCode">COUPON CODE</label>
                                            <input type="text" class="form-control" name="couponCode" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <asp:LinkButton ID="LinkButton1" CssClass="subscribe btn btn-success btn-lg btn-block" href="Order_Com.aspx" runat="server">Make Payment</asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row" style="display: none;">
                                    <div class="col-xs-12">
                                        <p class="payment-errors"></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-3"></div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User_IF.master" AutoEventWireup="true" CodeFile="Order_Com.aspx.cs" Inherits="Receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">

    <link type="text/css" rel="stylesheet" href="\css\Order_Com.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="http://yourjavascript.com/21051171187/jquery-touchswipe-min.js"></script>
    <script type="text/javascript" src="http://yourjavascript.com/11873115711/jquery-1-12-4-min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincnt2" runat="Server">

    <div class="w">
        <div id="content">
            <div class="col-md-4"></div>
            <div class="col-md-4;notify successbox">
                <h1>Transaction Completed!</h1>
                <br />
                <span class="alerticon">
                    <img src="http://s22.postimg.org/i5iji9hv1/check.png" alt="checkmark" /></span><br />
                <br />
                <p>Thank you for shopping with us today!</p>
                <br />
                <p>A receipt has been sent to your email address. </p>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <br />
    <div class="col-md-4;notify successbox">
        <h1>Our Products:</h1>
    </div>
    <br />
    <div class="container2">
        <div id="carousel">
            <figure>
                <img src="\Gallery\AMB.jpeg" width="100%" height="100%" />
            </figure>
            <figure>
                <img src="\Gallery\AVX.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\AZ.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\CGX.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\CPC.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\INSP.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\MM.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\SCT.jpeg" alt="" width="100%" height="100%">
            </figure>
            <figure>
                <img src="\Gallery\VX.jpeg" alt="" width="100%" height="100%">
            </figure>
        </div>
    </div>
    <br />
    <br />
    <footer style="margin-top: 200px;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="menu">
                        <span>Menu</span>
                        <li>
                            <a href="Home.aspx">Home</a>
                        </li>

                        <li>
                            <a href="#">About</a>
                        </li>
                        <li>
                            <a href="Gallery.aspx">Gallery</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="menu">
                        <span>Contact</span>
                        <li>
                            <a href="#">Phone</a>
                        </li>
                        <li>
                            <a href="#">Email</a>
                        </li>
                        <li>
                            <a href="contact.aspx">Contact us</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="adress">
                        <span>Address</span>
                        <li>
                            <p>Azrieli Center, Tel Aviv</p>
                        </li>

                        <li>
                            <p>054-9742741</p>
                        </li>
                        <li>
                            <p>info@gmail.com</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

</asp:Content>


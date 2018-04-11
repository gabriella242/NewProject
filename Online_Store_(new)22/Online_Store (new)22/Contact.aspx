<%@ Page Title="" Language="C#" MasterPageFile="~/User_IF.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="\css\Contact.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincnt2" runat="Server">

    <div class="con">
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3380.8214794820474!2d34.794391484332834!3d32.07407688118994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151d4b996d0afa93%3A0xf7b39dda408c811c!2z157XkteT15zXmSDXoteW16jXmdeQ15zXmSwg15PXqNeaINee16DXl9edINeR15LXmdefIDEzMiwg16rXnCDXkNeR15nXkSDXmdek15U!5e0!3m2!1siw!2sil!4v1518981421527" width="100%" height="650px" frameborder="0" style="border: 0" allowfullscreen></iframe>
        </div>
        <div class="contact-form">
            <h1 class="title">Contact Us Today</h1>
            <h2 class="subtitle">Get in touch with us!</h2>
            <form id="form1" runat="server">
                <asp:TextBox ID="name" runat="server" placeholder="Your name"></asp:TextBox>
                <asp:TextBox ID="email" runat="server" placeholder="Your E-mail Adress"></asp:TextBox>
                <asp:TextBox ID="phone" runat="server" placeholder="Your Phone Number"></asp:TextBox>
                <asp:TextBox ID="contactmsg" runat="server" cols="20" Rows="8" placeholder="Your Message" TextMode="Multiline" /><br />
                <asp:Button ID="send_btn" runat="server" class="btn-send" Text="Send" OnClick="send_btn_Click" />
                <br />
                <br />
                <br />
                <h2 class="subtitle">
                    <asp:Literal ID="ltrmsg" runat="server"></asp:Literal></h2>
            </form>
        </div>
    </div>
</asp:Content>


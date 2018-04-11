<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" type="text/css" href="\css\login_test.css" />
    <link rel="stylesheet" type="text/css" href="\css\bootstrap.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />

</head>

<body>

    <div class="wrapper">

        <div class="stars"></div>
        <div class="twinkling"></div>


        <div class="container" id="formContainer">
            <div id="enquirypopup" class="modal fade in" role="dialog">
                <div class="modal-dialog">


                    <div class="modal-content row">
                        <div class="modal-header custom-modal-header">

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
                                        <asp:Literal ID="msg" runat="server"></asp:Literal>
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <div class="row omb_row-sm-offset-3 omb_loginOr">

                                            <hr class="omb_hrOr" />
                                            <span class="omb_spanOr">or</span>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <div class="form-group col-sm-6">
                                            <asp:Button ID="register" class="btn btn-lg btn-block omb_btn-twitter" runat="server" Text="Register" OnClick="Button1_Click" />
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <asp:Button ID="Button1" class="btn btn-lg btn-block omb_btn-google" runat="server" Text="Home" OnClick="Button1_Click1" />
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-12">
                                        <p class="omb_forgotPwd">
                                            <a href="#">Forgot password?</a>
                                        </p>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(window).load(function () {
            setTimeout(function () {
                $('#enquirypopup').modal('show');
            }, 1000);
        });
    </script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_Registration.aspx.cs" Inherits="WebSite1_WebSite1_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Now</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="\css\Register_Design.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row main">
                    <div class="main-login main-center" />
                    <h5>Sign up to get special offers!</h5>
                    <div class="form-group">
                        <label for="name" class="cols-sm-2 control-label">Your Name</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <asp:TextBox class="form-control" ID="name" runat="server" placeholder="Enter your Name" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your Name" ControlToValidate="name"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">Your Email</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                <asp:TextBox class="form-control" ID="email" runat="server" placeholder="Enter your Email" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter an email" ControlToValidate="email"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a correct email!" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label">Username</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <asp:TextBox class="form-control" ID="txt_new_user" runat="server" placeholder="Enter your Username" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a username" ControlToValidate="txt_new_user"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">Password</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <asp:TextBox class="form-control" ID="txt_new_pass" runat="server" placeholder="Enter your Password" type="password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a password" ControlToValidate="txt_new_pass"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <asp:TextBox class="form-control" ID="confirm" runat="server" placeholder="Confirm your Password" type="password" />
                                <asp:CompareValidator ID="cmppassword" runat="server" ErrorMessage="Password doesn't match!" ControlToValidate="confirm" ControlToCompare="txt_new_pass"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <asp:Button runat="server" ID="button" class="btn btn-primary btn-lg btn-block login-button" Text="Register" OnClick="button_Click" />
                    </div>
                    <asp:Literal ID="ltrmsg" runat="server"></asp:Literal><br />
                    <asp:Button ID="loginbtn" runat="server" Text="Login" class="btn btn-primary btn-lg" OnClick="loginbtn_Click" CausesValidation="false" />
                    <asp:Button ID="Button1" runat="server" Text="Home" class="btn btn-primary btn-lg" OnClick="Button1_Click" CausesValidation="false" />
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

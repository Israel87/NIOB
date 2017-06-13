<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NIOB.Login" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NIOB - Welcome</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <div id="body_content">
        <div class="container">
            <div class="row">
                <center>
                    <div class="logo">
                        <img  src="Content/images/logo.jpeg" class="img-logo"/>
                        <h2 class="greentext welcome-text">Welcome to The Nigeria Institute of Building</h2>
                    </div>
                    <center>
                        <form class="form-horizontal" runat="server">
                                <div class="login-panel panel panel-default" id="_header" style="padding:10px 10px 0 10px; margin-top: 10px; width: 320px;">
                                    <div class="panel-body" style="padding-bottom:0">
                                        <fieldset>
                                            <center>
                                                <div class="form-group">
                                                    <input class="form-control" placeholder="Username" id="uname" type="text" style="width:200px;" autofocus="autofocus" runat="server">
                                                </div>
                                                <div class="form-group">
                                                    <input class="form-control" placeholder="Password" id="pwd" type="password" style="width:200px;" value="" runat="server">
                                                </div>
                                                <asp:LinkButton CssClass="btn btn-success" ID="login" style="margin-top: 5px;margin-bottom: 20px; width:150px;" OnClick="login_Click" runat="server">Login</asp:LinkButton><br />
                                                <p>Not yet registered? <a href="Register/Category.aspx">Click here to Register</a></p>
                                                <%--<input class="btn btn-primary" type="submit" value="Login" style="margin-top: 5px; width:150px;" />--%>
                                            </center>
                                        </fieldset>                                    
                                    </div>
                                </div>
                                <p id="error_lbl" style="color:red" runat="server"></p>
                             </form>
                        </center>
                </center>
            </div>
        </div>
    </div>
    <hr />
    <div class="footer">
        <div class="container">
            <center>
                <p id="footer">&copy; 2017 - Powered by Chams Plc  <img src="Content/images/chams.jpg" style="margin-bottom: 2px" /></p>
            </center>
        </div>
    </div>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script>
        getWindowHeight();

        window.onresize = function (event) {
            getWindowHeight();
        };

        function getWindowHeight() {
            var height = window.innerHeight;
            //var header_h = $(".header").height();
            var footer_h = $("#footer").height();

            $("#body_content").css("min-height", function () {
                return height - (footer_h + 75);
            });
        }
    </script>
</body>
</html>

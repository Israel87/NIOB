<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="NIOB.Register.Category" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NIOB - Select Category</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="../favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <div id="body_content">
        <div class="container">
            <div class="row">
                <center>
                    <div class="logo">
                        <img  src="../Content/images/logo.jpeg" class="img-logo" style="width: 160px;height: 110px;"/>
                        <h2 class="greentext welcome-text" style="font-weight: 600;">Welcome to The Nigeria Institute of Building</h2>                        
                    </div>
                    <div class="category_headertext">
                        <h4 class="">Select Category</h4>                        
                    </div>
                    <form method="post" runat="server">
                        <center>
                        <div class="col-md-8 col-md-offset-2">
                            <div class="row">
                                <div class="col-md-6">
           
                                    <img src="../Content/images/artisan.jpg" class="img-category"/> <br /><br />
                                    <p>
                                        <a href="Artisan" class="btn btn-success">Artisan &raquo;</a>                              

                                    </p>
                                </div>
        
                                <div class="col-md-6">
                             <img  src="../Content/images/certified.png" class="img-category"/><br /><br />
                            <p>
                                <a href="Company" class="btn btn-success">Company &raquo;</a>
                            </p>
                        </div>
        
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <img  src="../Content/images/user.png" class="img-category"/><br /><br />
                                    <p>
                                        <a href="Assessor" class="btn btn-success">Assessor &raquo;</a>
                                    </p>
                                </div>
                                <div class="col-md-6">
                                     <img  src="../Content/images/User_Group.png" class="img-category"/><br /><br />
                                    <p>
                                        <a href="Trainer" class="btn btn-success"> Certified Trainer &raquo;</a>
                                    </p>
                                </div>        
                            </div>
                        </div>
                    </center>
                    </form>                    
                </center>
            </div>
        </div>
    </div>
    
    <div class="footer" style="margin-top:40px;">
        <hr />
        <div class="container">
            <center>
                <p id="footer">&copy; 2017 - Powered by Chams Plc  <img src="../Content/images/chams.jpg" style="margin-bottom: 2px" /></p>
            </center>
        </div>
    </div>
    <script src="~/Scripts/jquery-1.10.2.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
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
                return height - (footer_h + 60);
            });
        }
    </script>
</body>
</html>


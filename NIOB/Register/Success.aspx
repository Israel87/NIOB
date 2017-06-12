<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="NIOB.Artisan.Success" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>NIOB - Registration Successful</title>
        <link href="../Content/Site.css" rel="stylesheet" />
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
        <link href="../Content/bootstrap-responsive.min.css" rel="stylesheet" />
        <link href="../Content/preview.min.css" rel="stylesheet" />
        <link href="../Content/font-awesome.min.css" rel="stylesheet" />

        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css' />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

        <script src="../Scripts/jquery-1.10.2.min.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../Scripts/main.js"></script>
        <script src="../Scripts/main.js"></script>
    </head>

    <body>
        <div id="body_content">
             <center>
            <div class="logo">
                <img  src="../Content/images/logo.jpeg" class="img-logo" style="width: 160px;height: 110px;"/>
                <h2 class="greentext welcome-text" style="font-weight: 600;">Welcome to The Nigeria Institute of Building</h2>
            </div>
            <br /><br />

            <div class="container">

                <img src="../Content/images/approve.png" width="100px" height="100px" />
                <h4> Registration Successful</h4><br /><br />

                <h4 class="content-text">Thank you for registering with NIOB, your application is being processed.</h4>
                <h5 class="content-text">You will receive an email once your application is approved. Kindly keep your username and password.</h5>

            </div><br /><br /><br />
        </center>
        </div>
       

        <div class="footer">
            <div class="container">
                <center>
                    <p id="footer">&copy; 2017 - Powered by Chams Plc <img src="../Content/images/chams.jpg" style="margin-bottom: 2px"
                        /></p>
                </center>
            </div>
        </div>

        <script src="../Scripts/jquery-1.10.2.min.js"></script>

        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../Scripts/tabs-addon.js"></script>
        <script src="../Scripts/index.js"></script>
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
                    return height - (footer_h + 40);
                });
            }
    </script>
    </body>

    </html>
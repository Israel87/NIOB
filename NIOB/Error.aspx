<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="NIOB.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NIOB - Welcome to the Nigeria Institute of Building</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="../Content/preview.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/main.js"></script>
</head>

<body>
    <div id="body_content">
        <center>
     <div class="logo">           
            <img  src="../Content/images/logo.jpeg" width="120px" height="85px" style="margin-bottom: 0;"/>            
           <h2 class="greentext" style="margin-top: 0;">Welcome to the Nigeria Institute of Building</h2>
        </div>
        <br /> 
        <br /><br />
            <p id="error_lbl"></p>
    </center>
        <div>
            <p>An Error occured. Click to <a href="/">go back to Home page.</a></p>
        </div>
    </div>
    
    <div class="footer">
        <div class="container">
            <center>
                <p id="footer">&copy; 2017 - Powered by Chams Plc  <img src="../Content/images/chams.jpg" style="margin-bottom: 2px" /></p>
            </center>
        </div>
    </div>

    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/tabs-addon.js"></script>
    <script src="../App_JS/common.js"></script>
    <script src="../App_JS/sharedjs.js"></script>
    <script src="../App_JS/validation.js"></script>
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
                return height - (footer_h + 50);
            });
        }
    </script>


</body>

</html>

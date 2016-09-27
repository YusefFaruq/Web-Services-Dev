<%-- 
    Document   : mainpage
    Created on : 25/09/2016, 5:51:17 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>    
            .button-style{
                padding: 5px 15px;
                margin-top: 10px;
            }

            .floating{
                float:left;
                width: 640px;
            }

            table tr td{
                font-size: 24px;
            }

            hr{
                margin: 0px 700px 700px 700px;
            }

            .pad{padding-top: 40px;
                 padding-left: 15px;}

            table {
                width:100%;
            }

            header {
                position: relative;
                width: 100%;
                min-height: auto;
                text-align: center;
                color: #fff;
                opacity: 0.9;
                background-image: url(./image/1.jpg);
                background-position: ;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                background-size: cover;
                -o-background-size: cover;
            }

            header .header-content {
                position: relative;
                width: 100%;
                padding: 100px 15px;
                text-align: center;
                color: #0f0f0f;
            }

            header .header-content .header-content-inner h3 {
                margin-top: 0;
                margin-bottom: 300px;
                text-transform: uppercase;
                font-weight: 700;
            }
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css">

        <title>Main Page</title>
    </head>
    <body style="background-color: #f5f4f4;">
        <!-- navbar -->
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <nav class = "navbar navbar-default navbar-fixed-top" role = "navigation">
                    <div class = "navbar-header">
                        <a class = "navbar-brand navbar-left" href = "#">Home</a>
                    </div>
                    <div class="nav navbar-nav navbar-right">
                        <a class="btn btn-primary" href="login.jsp" role="button" style="margin:7px 5px 0 0;">Login</a>
                        <a class="btn btn-success" href="#" role="button" style="margin: 7px 25px 0 0;">Sign up</a>
                    </div>
                </nav>
            </div>
        </div>
        <!-- navbar ends here-->

        <header>
            <div class="header-content">
                <div class="header-content-inner">
                    <h1><b>Welcome to Sydney</b></h1>
                    <hr>
                    <h3>List of available properties</h3>
                </div>
            </div>
        </header>

        <div class="container" style="padding-right:200px; padding-left:200px; margin-top: 30px">
            <img src="image/2.JPG" class="img-responsive" alt="not applicable" >
            <table class="table table-bordered table-hover">
                <tr>
                    <td>Location</td>
                    <td>Listing type</td>
                    <td>Number of guests</td>
                </tr>
            </table>
        </div>

        <div class="container" style="padding-right:200px; padding-left:200px; margin-top: 30px">
            <img src="image/2.JPG" class="img-responsive" alt="not applicable" >
            <table class="table table-bordered table-hover">
                <tr>
                    <td>Location</td>
                    <td>Listing type</td>
                    <td>Number of guests</td>
                </tr>
            </table>
        </div>
    </body>
</html>

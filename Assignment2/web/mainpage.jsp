<%-- 
    Document   : mainpage
    Created on : 25/09/2016, 5:51:17 PM
    Author     : HP
--%>
<%@page import="wsd.ass2.User"%>

<% String filePath = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% wsd.ass2.Users users = rentApp.getUsers();
    //TEST TO ENSURE XML IS CONNECTED
    String secondusername = users.getList().get(1).getName();%>

<% User user = (User) session.getAttribute("user");
    //TEST TO ENSURE SESSION IS WOKRING
    String sessionusername = "";
    if (user != null) {
        sessionusername = ", " + user.getName();
    }

%>

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
                font-size: 18px;
                font-family: 'Lato', sans-serif;
            }

            hr{
                margin: 0px 760px 0px 760px;
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
                font-weight: 700;
            }
        </style>

        <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Bree+Serif|Lato" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>Main Page</title>
    </head>
    <body style="background-color: #f5f4f4;">
        <!-- navbar -->
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <nav class = "navbar navbar-inverse navbar-fixed-top" role = "navigation">
                    <div class = "navbar-header">
                        <a class = "navbar-brand navbar-left"  href = "#home">Home</a>
                    </div>
                    <div class="nav navbar-nav navbar-right">
                        <a class="btn btn-primary" role="button" data-toggle="modal" data-target="#myModal" style="margin:7px 5px 0 0;font-family: 'Droid Sans', sans-serif;"><b>Login</b></a>
                        <a class="btn btn-success" href="#" role="button" style="margin: 7px 25px 0 0;font-family: 'Droid Sans', sans-serif;"><b>Sign up</b></a>
                    </div>
                </nav>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">Login</h3>
                    </div>
                    <div class="modal-body" style="margin-left: 10px;margin-right: 10px;">
                        <form action="login.jsp" method="POST" class="form-horizontal">
                            <div class="form-group">
                                <label>Email address:</label>
                                <input type="email" name="email" class="form-control" id="email" placeholder="Enter username">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" id="email" placeholder="Enter password">
                            </div>
                            <div  align="right">
                                <input class="btn btn-default form-horizontal form-group " type="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--modal ends here-->
        </div>
        <!-- navbar ends here-->

        <header style="font-family: 'Bree Serif', serif;">
            <div class="header-content">
                <div class="header-content-inner">
                    <h1 style="margin-top:0;"><b>Welcome to Sydney<%= sessionusername%>!</b></h1>
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

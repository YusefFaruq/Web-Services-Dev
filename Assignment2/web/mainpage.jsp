<%--
    Document   : mainpage
    Created on : 25/09/2016, 5:51:17 PM
    Author     : HP
--%>
<% session.invalidate();%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
    <head

        <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Bree+Serif|Lato" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="./css/style1.css" rel="stylesheet" type="text/css">
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
                        <a class="btn btn-success" href="#" role="button" data-toggle="modal" data-target="#signupModal" style="margin: 7px 25px 0 0;font-family: 'Droid Sans', sans-serif;"><b>Sign up</b></a>
                    </div>
                </nav>
            </div>
        </div>
        <!-- navbar ends here-->
        
        <!-- Modal for login-->
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
                                <label>Username:</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter your username">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" name="password" placeholder="Enter your password">
                            </div>
                            <div  align="right">
                                <input class="btn btn-default form-horizontal form-group " type="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--modal ends here-->

        <!--modal for sign up-->
        <div class="modal fade" id="signupModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">Sign Up</h3>
                    </div>
                    <div class="modal-body" style="margin-left: 10px;margin-right: 10px;">
                        <form action="register.jsp" method="POST" class="form-horizontal">
                            <div class="form-group">
                                <label>Email address:</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter your email address">
                            </div>
                            <div class="form-group">
                                <label>Full name:</label>
                                <input name="name" class="form-control" type="text" placeholder="Enter your full name">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" name="password" placeholder="Enter your password">
                            </div>
                            <div  align="right">
                                <input class="btn btn-default form-horizontal form-group " type="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>                
        </div>
        <!--modal ends here-->

    <header style="font-family: 'Lato', sans-serif;">
        <div class="header-content">
            <div class="header-content-inner">
                <h1 style="font-size: 45px;margin: 0px;"><b>Welcome to Sydney</b></h1>
                <hr>
                <h3>List of available properties in Sydney</h3>
            </div>
        </div>
    </header>

    <div class="container " style="padding-right:200px; padding-left:200px; margin-top: 30px">
        <c:set var="xmltext">
            <listings>
                <listing>
                    <id>1</id>
                    <listingid>001</listingid>
                    <type>Whole house</type>
                    <location>Ryde</location>
                    <address>123 Fake St, Ryde, NSW</address>
                    <description>A whole house available in Ryde, NSW.</description>
                    <numguests>4</numguests>
                    <imageUrl>2.JPG</imageUrl>
                </listing>
                <listing>
                    <id>2</id>
                    <listingid>002</listingid>
                    <type>Whole unit</type>
                    <location>Chatswood</location>
                    <address>456 Lane Ln, Chatswood, NSW</address>
                    <description>A whole unit available in Chatswood, NSW.</description>
                    <numguests>2</numguests>
                    <imageUrl>3.jpg</imageUrl>
                </listing>
                <listing>
                    <id>2</id>
                    <listingid>003</listingid>
                    <type>Bedroom</type>
                    <location>Penrith</location>
                    <address>789 Road Rd, Penrith, NSW</address>
                    <description>A bedroom available in an apartment in Penrith, NSW.</description>
                    <numguests>1</numguests>
                    <imageUrl>1.jpg</imageUrl>
                </listing>
            </listings>
        </c:set>
    </div>
    <c:import url="listings.xsl" var="xslt"/>
    <x:transform xml="${xmltext}" xslt="${xslt}"/>

</body>
</html>

<%-- 
    Document   : mainpage
    Created on : 25/09/2016, 5:51:17 PM
    Author     : HP
--%>

<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="rentApp" class="uts.wsd.RentApplication" scope="application" >
            <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
        </jsp:useBean>
        
        <% filePath = application.getRealPath("WEB-INF/listings.xml");%>
        <jsp:useBean id="listingApp" class="uts.wsd.ListingApplication" scope="application" >
            <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
        </jsp:useBean> 
        
        <% filePath = application.getRealPath("WEB-INF/enquiries.xml");%>
        <jsp:useBean id="enquiryApp" class="uts.wsd.EnquiryApplication" scope="application" >
            <jsp:setProperty name="enquiryApp" property="filePath" value="<%=filePath%>" />
        </jsp:useBean> --%>

        <!-- The following two filepath injections are for testing purposes only, to ensure that the other XML files are accessible by the JSPs -->


        <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Bree+Serif|Lato" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="./css/style1.css" rel="stylesheet" type="text/css">
        <link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>Welcome</title>
    </head>
    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users users = rentApp.getUsers();
        //TESTING - USE THESE TWO VARIABLES IN THE BODY BELOW IN ORDER TO TEST XML ACCESSIBILITY

        User user = users.login(email, password);
        if (user != null) {
    %>
    
    <body style="background-color: #f5f4f4;">
        <!-- navbar -->
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <nav class = "navbar navbar-inverse navbar-fixed-top" role = "navigation">
                    <div class = "navbar-header">
                        <a class = "navbar-brand navbar-left" style="color:#FFFFFF" href = "#home">Welcome, <%= user.getName()%></a>
                    </div>
                    <div class="nav navbar-nav navbar-right">
                        <a class="btn btn-success" data-toggle="modal" data-target="#logoutModal" role="button" style="margin: 7px 25px 0 0;font-family: 'Droid Sans', sans-serif;"><b>Sign out</b></a>
                    </div>
                </nav>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="logoutModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">Sign out</h3>
                    </div>
                    <div class="modal-body" style="margin-left: 10px;margin-right: 10px;">                       
                        <p>Your account is already Signed out</p>
                        <div align="right">
                            <a href="lol.jsp" class="btn btn-default form-horizontal form-group">Continue</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--modal ends here-->
        </div>
        <!-- navbar ends here-->

        <header style="font-family: 'Bree Serif', serif;">
            <div class="header-content">
                <div class="header-content-inner">
                    <h1 style="margin-top:0;"><b>Welcome to Sydney</b></h1>
                    <hr>
                    <h3>List of available properties</h3>
                </div>
            </div>
        </header>

        <div class="container" style="padding-right:200px; padding-left:200px; margin-top: 30px">
            <img src="image/2.JPG" class="img-responsive" alt="not applicable" name="image">
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
    <%
        session.setAttribute("user", user);
    } else {
    %>
    <p>Password incorrect. Click <a href="mainpage.jsp">here</a> to try again.</p>
    <%
        }
    %>
</html>

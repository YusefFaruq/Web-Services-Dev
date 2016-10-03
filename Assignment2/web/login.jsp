<!-- Jack Huggart 
     This page has more features than is actually required in order to provide a central place to test those features. -->

<% String filePath = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<!-- The following two filepath injections are for testing purposes only, to ensure that the other XML files are accessible by the JSPs -->
<% filePath = application.getRealPath("WEB-INF/Listings.xml");%>
<jsp:useBean id="listingApp" class="wsd.ass2.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>


<% filePath = application.getRealPath("WEB-INF/enquiries.xml");%>
<jsp:useBean id="enquiryApp" class="wsd.ass2.EnquiryApplication" scope="application" >
    <jsp:setProperty name="enquiryApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% wsd.ass2.Users users = rentApp.getUsers();

    //TESTING - USE THESE TWO VARIABLES IN THE BODY BELOW IN ORDER TO TEST XML ACCESSIBILITY
    wsd.ass2.Listings listings = listingApp.getListings();
    String testdesc = listings.getList().get(0).getDescription();

    wsd.ass2.Enquiries enquiries = enquiryApp.getEnquiries();
    String testmsg = enquiries.getList().get(0).getMessage();
%>

<% String email = request.getParameter("email");
    String password = request.getParameter("password");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% //START XML LINK TEST - COMMENT THE BELOW CODE OUT (up to the if statement) TO REMOVE THE TEST
            //String firstusername = users.getList().get(0).getName(); 
            //if this works and a user's name is displayed, the XML has been linked properly
        %>
        <!-- <h1>This is a heading with a user's name: (Insert firstusername here to check if this page can find the list of users) </h1> -->

        <% if (users.login(email, password) != null) {
                wsd.ass2.User user = users.login(email, password);
                session.setAttribute("user", user);
        %>

        Login successful, <%= user.getName()%>. Click <a href="mainpage.jsp">here</a> to return to the main page.
        <% } else {%>
        Password incorrect. Enter your details correctly below to try again.
        <p>
        <form action="login.jsp" method="POST">
            <table>
                <tr>
                    <td>Email</td>
                    <td><input name="email" type="email"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input name="password" type="password"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>
        <% }%>
    </body>
</html>

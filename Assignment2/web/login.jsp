<!-- Jack Huggart -->

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% wsd.ass2.Users users = rentApp.getUsers(); %>

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
            
            Login successful, <%= user.getName() %>. Click <a href="mainpage.jsp">here</a> to return to the main page.
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
        <% } %>
    </body>
</html>

<!-- Jack Huggart -->

<%  String name = request.getParameter("name");
    String namecomp[] = name.split(" +");
    String firstname = namecomp[0];

    String email = request.getParameter("email");
    String password = request.getParameter("password");%>

<%@page import="wsd.ass2.Usermarshal"%>
<%@page import="wsd.ass2.User"%>
<%@page import="wsd.ass2.Users" %>

<% String filePath = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% Users users = rentApp.getUsers(); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <% if (users.emailInUse(email)) { %>
        This email address is already registered. Please <a href="register.jsp">register again</a> with a new email address.
        <% } else {
            User user = new User(email, name, password);
            session.setAttribute("user", user); //inject user into the session
            users.addUser(user);
            Usermarshal.marshal(filePath, users); //marshal the complete user list to the xml file %>

        Thanks, <%= firstname %>! You are ready to create listings with us! Click <a href="mainpage.jsp">here</a> to get started.
        <% }%>
    </body>
</html>

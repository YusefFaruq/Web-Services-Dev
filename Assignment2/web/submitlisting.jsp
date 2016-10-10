<%-- Jack Huggart --%>

<%@page import="wsd.ass2.Listingmarshal"%>
<%@page import="wsd.ass2.Listing"%>
<%@page import="java.util.ArrayList"%>
<%@page import="wsd.ass2.Listings"%>
<%@page import="wsd.ass2.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String filePath = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% filePath = application.getRealPath("WEB-INF/Listings.xml");%>
<jsp:useBean id="listingApp" class="wsd.ass2.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% User user = (User) session.getAttribute("user");
    String[] namecomp = user.getName().split(" +");
    String firstname = namecomp[0];
    
    String type = request.getParameter("type");
    String location = request.getParameter("location");
    String address = request.getParameter("address");
    int numguests = Integer.parseInt(request.getParameter("numguests"));
    String description = request.getParameter("description");
    
    
    Listings listings = listingApp.getListings();
    ArrayList<Listing> list = listings.getList();
    int id = list.size() + 1;
    
    Listing listing = new Listing(user.getEmail(), id, type, location, address, description, numguests);
    listings.addListing(listing);
    Listingmarshal.marshal(filePath, listings);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listing submitted!</title>
    </head>
    <body>
        <p>
            Your listing has been submitted, <%= firstname%>, and it is now available for other users to see. <a href="listingdetail.jsp?id=<%= id %>">View it now</a>
        </p>
        <p>
            Click <a href="userprofile.jsp">here</a> to return to your profile or return to the main page <a href="mainpage.jsp">here</a>.
        </p>
    </body>
</html>
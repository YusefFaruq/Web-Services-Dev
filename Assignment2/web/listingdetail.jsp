<%-- Jack Huggart --%>

<%@page import="wsd.ass2.User"%>
<%@page import="wsd.ass2.Listing"%>
<%@page import="wsd.ass2.Listings"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>

<?xml-stylesheet type="text/xsl" href="main.xsl"?>

<% String filePath = application.getRealPath("WEB-INF/Listings.xml");%>
<jsp:useBean id="listingApp" class="wsd.ass2.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% filePath = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% String listingidstr = request.getParameter("id");
    int listingid = Integer.parseInt(listingidstr);
    
    Listings listings = listingApp.getListings();
    Listing listing = listings.searchListingsId(listingid);
    
    if (request.getParameter("available") != null) {
        listing.setAvailable(Boolean.valueOf(request.getParameter("available")));
    }
    
    User user = (User) session.getAttribute("user");
    boolean userowns = false;
    
    if (session.getAttribute("user") != null && user.getEmail().equals(listing.getEmail())) {
        userowns = true;
    }
%>

<page title="<%= listing.getLocation() %>">
    <detailedlisting listingid="<%= listing.getId() %>" userowns="<%= userowns %>" status="<%= listing.isAvailable() %>">
        <imageurl><%= listing.getImageUrl() %></imageurl>
        <type><%= listing.getType() %></type>
        <location><%= listing.getLocation() %></location>
        <address><%= listing.getAddress() %></address>
        <description><%= listing.getDescription() %></description>
        <numguests><%= listing.getNumguests() %></numguests>
        <listingid><%= listing.getId() %></listingid>
    </detailedlisting>
    <enquirylink listingid="<%= listing.getId() %>" userowns="<%= userowns %>"/>
</page>
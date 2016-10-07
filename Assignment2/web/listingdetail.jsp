<%-- Jack Huggart --%>

<%@page import="wsd.ass2.Listing"%>
<%@page import="wsd.ass2.Listings"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>

<?xml-stylesheet type="text/xsl" href="main.xsl"?>

<% String filePath = application.getRealPath("WEB-INF/Listings.xml");%>
<jsp:useBean id="listingApp" class="wsd.ass2.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% String listingidstr = request.getParameter("id");
    int listingid = Integer.parseInt(listingidstr);
    
    Listings listings = listingApp.getListings();
    Listing listing = listings.searchListingsId(listingid);
%>

<page title="<%= listing.getLocation() %>">
    <detailedlisting>
        <imageurl><%= listing.getImageUrl() %></imageurl>
        <type><%= listing.getType() %></type>
        <location><%= listing.getLocation() %></location>
        <address><%= listing.getAddress() %></address>
        <description><%= listing.getDescription() %></description>
        <numguests><%= listing.getNumguests() %></numguests>
        <listingid><%= listing.getId() %></listingid>
    </detailedlisting>
    <enquiry listingid="<%= listing.getId() %>" />
</page>
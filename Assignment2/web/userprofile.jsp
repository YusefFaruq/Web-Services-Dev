<%-- Jack Huggart --%>

<%@page import="wsd.ass2.Listing"%>
<%@page import="java.util.ArrayList"%>
<%@page import="wsd.ass2.Listings"%>
<%@page import="wsd.ass2.User"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>

<?xml-stylesheet type="text/xsl" href="userprof.xsl"?>

<% String filePath = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="rentApp" class="wsd.ass2.RentApplication" scope="application" >
    <jsp:setProperty name="rentApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% filePath = application.getRealPath("WEB-INF/Listings.xml");%>
<jsp:useBean id="listingApp" class="wsd.ass2.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% User user = (User)session.getAttribute("user");

    String[] namecomp = user.getName().split(" +");
    String firstname = namecomp[0];
    
    String email = user.getEmail();
    Listings listings = listingApp.getListings();
    ArrayList<Listing> userlistings = listings.searchListingsEmail(email);
%>

<page title="<%= firstname %>'s profile" >
    <profile name="<%= user.getName() %>" >
        <listings>
            <% for (Listing listing : userlistings) { %>
                <listing location="<%= listing.getLocation() %>" address="<%= listing.getAddress() %>" 
                         type="<%= listing.getType() %>" listingid="<%= listing.getId() %>" 
                         numguests="<%= listing.getNumguests() %>" description="<%= listing.getDescription() %>" />
            <% } %>
        </listings>        
    </profile>
</page>
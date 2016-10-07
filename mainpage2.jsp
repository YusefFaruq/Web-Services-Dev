<%@page contentType="text/xml" import="uts.wsd.*"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="lmao.xsl"?>
<% String filePath = application.getRealPath("WEB-INF/listings.xml");%>
<jsp:useBean id="listingApp" class="uts.wsd.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>
<%
    Listings listings = new Listings();
    for(Listing listing : listings.getList()){
%>
<listings>
    <listing id="<%=listing.getId()%>">
        <type><%=listing.getType()%></type>
        <location><%=listing.getLocation()%></location>
        <address><%=listing.getAddress()%></address>
        <description><%=listing.getDescription()%></description>
        <numguests><%=listing.getNumguests()%></numguests>
        <imageUrl><%=listing.getImageUrl()%></imageUrl>
        <available><%=listing.isAvailable()%></available>
    </listing>    
</listings>
<% } %>
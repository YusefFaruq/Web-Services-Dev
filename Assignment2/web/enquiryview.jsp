<%-- Jack Huggart --%>

<%@page import="wsd.ass2.Listing"%>
<%@page import="wsd.ass2.Listings"%>
<%@page import="wsd.ass2.Enquiry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="wsd.ass2.Enquiries"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>

<?xml-stylesheet type="text/xsl" href="main.xsl"?>

<% String filePath = application.getRealPath("WEB-INF/enquiries.xml");%>
<jsp:useBean id="enquiryApp" class="wsd.ass2.EnquiryApplication" scope="application" >
    <jsp:setProperty name="enquiryApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% filePath = application.getRealPath("WEB-INF/Listings.xml");%>
<jsp:useBean id="listingApp" class="wsd.ass2.ListingApplication" scope="application" >
    <jsp:setProperty name="listingApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<% String idstr = request.getParameter("id");
    int id = Integer.parseInt(idstr);

    Enquiries enquiries = enquiryApp.getEnquiries();
    ArrayList<Enquiry> list = enquiries.searchEnquiries(id);
    boolean areenquiries = !list.isEmpty();
        
    Listings listings = listingApp.getListings();
    Listing listing = listings.searchListingsId(id);
%>

<page title="<%= listing.getLocation()%> enquiries">
    <profile name="Enquiries for <%= listing.getAddress()%>">
        <enquiries listingid="<%= listing.getId()%>" areenquiries="<%= areenquiries %>" >
            <% for (Enquiry enquiry : list) { %>
            <enquiry>
                <user><%= enquiry.getName() %></user>
                <email><%= enquiry.getEmail() %></email>
                <bookingdate><%= enquiry.getBookingdate() %></bookingdate>
                <message><%= enquiry.getMessage() %></message>
            </enquiry>
            <% }%>
        </enquiries>
    </profile>
</page>
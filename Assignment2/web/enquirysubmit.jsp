<%@page import="wsd.ass2.Enquirymarshal"%>
<%@page import="wsd.ass2.Enquiry"%>
<%@page import="wsd.ass2.Enquiries"%>
<!-- Jack Huggart -->

<% String filePath = application.getRealPath("WEB-INF/enquiries.xml");%>
<jsp:useBean id="enquiryApp" class="wsd.ass2.EnquiryApplication" scope="application" >
    <jsp:setProperty name="enquiryApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submission success!</title>
        
        <% String name = request.getParameter("name"); 
        String[] namecomp = name.split(" +");
        String firstname = namecomp[0];
        
        String email = request.getParameter("email");
        
        String listingidstr = request.getParameter("listingid");
        int listingid = Integer.parseInt(listingidstr);
        
        String bookingdate = request.getParameter("bookingdate");
        String message = request.getParameter("message");
        
        Enquiries enquiries = enquiryApp.getEnquiries();
        Enquiry enquiry = new Enquiry(name, email, listingid, bookingdate, message);
        enquiries.addEnquiry(enquiry);
        Enquirymarshal.marshal(filePath, enquiries);    //marshal the complete enquiry list to the xml file
        %>
        
    </head>
    <body>
        <p>
            Thank you, <%= firstname %>. Your enquiry was successfully submitted.
        </p>
        <p>
            Return to the main page <a href="mainpage.jsp">here</a>.
        </p>
    </body>
</html>

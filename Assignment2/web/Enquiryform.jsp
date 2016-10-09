<!-- Jack Huggart -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enquiry Form</title>
    </head>
    <body>
        <h1>Enquiry Form</h1>
        <% String listingid = request.getParameter("id");
            //listingid = "" + 3;   REMOVE THIS WHEN PARAMETER WILL BE SUPPLIED
        %>
        <form action="enquirysubmit.jsp?id=<%= Integer.parseInt(listingid)%>" method="POST">
            <table>
                <thead>Please enter your contact details into the form below and leave a short message for the host.</thead>
                <tr>
                    <td>Full name:</td>
                    <td><input name="name" type="text"></td>
                </tr>
                <tr>
                    <td>Email address:</td>
                    <td><input name="email" type="text"></td>
                </tr>
                <tr>
                    <td>Requested booking date:</td>
                    <td><input name="bookingdate" type="text"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><textarea name="message" rows="8" cols="20" placeholder="Message:"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit enquiry"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
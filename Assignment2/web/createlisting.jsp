<%-- Jack Huggart --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Listing</title>
    </head>
    <body>
        <h1>Create a new listing!</h1>
        <form action="submitlisting.jsp" method="POST">
            <table>
                <thead>Complete the form below to submit a new listing.</thead>
                <tr>
                    <td>Type of listing:</td>
                    <td><input name="type" type="text" placeholder="House, bedroom, etc."></td>
                </tr>
                <tr>
                    <td>Location:</td>
                    <td><input name="location" type="text" placeholder="Suburb/General area"</td>
                </tr>
                <tr>
                    <td>Full address:</td>
                    <td><input name="address" type="text"></td>
                </tr>
                <tr>
                    <td>Number of guests</td>
                    <td><input name="numguests" type="text"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><textarea name="description" rows="8" cols="20" placeholder="Description:"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Create listing"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
<%-- 
    Document   : newjsp
    Created on : 27/09/2016, 12:18:33 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <center>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <%
                String image = "hello";
                session.setAttribute("jpg", image);
                
            %>
            <form action="information_page.php">
                <table>
                    <tr>

                        <td rowspan="8">
                            <img src="<%=session.getAttribute("image")%>">
                            <%session.setAttribute("name", image);%>
                            <%=session.getAttribute("name")%>
                        </td>
                        <td>
                            Information
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            Type:
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            Location:
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            Guests:
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            Address:
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            User:
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            description:
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <input type="submit" value="Contiune">
                        </td>
                    </tr>
                </table>
            </form>
        </body>
    </center>
</html>

<!-- Jack Huggart -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <h1>Create a new account and start listing!</h1>
        <form action="registeraction.jsp" method="POST">
            <table>
                <tr>
                    <td>Email address</td>
                    <td><input name="email" type="email"></td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td><input name="name" type="text"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input name="password" type="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

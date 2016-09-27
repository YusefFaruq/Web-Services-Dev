<!-- Jack Huggart -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submission success!</title>
        
        <% String name = request.getParameter("name"); 
        String[] namecomp = name.split(" +");
        String firstname = namecomp[0];
        %>
        
    </head>
    <body>
        <p>
            Thank you, <%= firstname %>. Your enquiry was successfully submitted.
        </p>
    </body>
</html>

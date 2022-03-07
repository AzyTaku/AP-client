<%-- 
    Document   : TechMartHome
    Created on : Mar 5, 2022, 12:27:07 PM
    Author     : azlan
--%>

<%@page import="appack.Customer"%>
<%@page import="web.Util"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%   
            Customer cu = Util.authenticate(request, response, session);
            if (cu != null ) {
               out.print("<h1> Welcome " + cu.getUsername()+ "</h1>");
            }
        %>
        <h1>Welcome to TechMart Homepage!</h1>
    </body>
</html>

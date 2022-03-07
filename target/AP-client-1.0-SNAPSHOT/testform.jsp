<%-- 
    Document   : testform
    Created on : Mar 6, 2022, 4:36:23 PM
    Author     : azlan
--%>

<%@page import="appack.APservice"%>
<%@page import="appack.APservice_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="index.jsp" method="POST">
             <label>Username</label>
            <input id="in_user_name" name ="in_user_name" type="text"required>
            <label>Password</label>
            <input id="in_pass" name="in_pass" type="password" required>
            <input type="submit" class="btn btn-primary" value="Login" name="logsub" input>
            </div>
            </form><%
           APservice_Service service = new APservice_Service();
           APservice proxy = service.getAPservicePort(); 

            String InputUsername = request.getParameter("in_user_name");
            String InputPassword = request.getParameter("in_pass");

            if(request.getParameter("logsub")!=null){
            boolean res = proxy.loginUser(InputUsername, InputPassword);
            out.println(res);
            if(res == true){
            String site = "http://localhost:8080/AP-web-client/index.jsp/TechMartHome.jsp";
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site);
            }else{
            out.println("Username and Password didn't Match");
            String test1 = "Username and Password didn't Match";
            }
            }
            %>
    </body>
</html>

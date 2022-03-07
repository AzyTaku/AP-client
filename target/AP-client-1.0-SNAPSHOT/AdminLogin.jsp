<%-- 
    Document   : AdminLogin
    Created on : Mar 3, 2022, 10:28:25 PM
    Author     : azlan
--%>
<%@page import="appack.APservice"%>
<%@page import="appack.APservice_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TechMart Admin Login</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Welcome to TechMart!
                                            <br>This is the Admin Login</h3></div>
                                    <div class="card-body">
                                        <form action="AdminLogin.jsp" method="POST">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="in_user_name" name ="in_user_name" type="text" placeholder="name@example.com" required>
                                                <label for="in_user_name">Username</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="in_pass" name="in_pass" type="password" placeholder="Password" required>
                                                <label for="in_pass">Password</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small"></a>
                                                <input type="submit" class="btn btn-primary" value="Login" name="logsub" input>
                                            </div>
                                        </form>
        <%
        APservice_Service service = new APservice_Service();
        APservice proxy = service.getAPservicePort(); 
        
            String InputUsername = request.getParameter("AdminInputUser");
            String InputPassword = request.getParameter("AdminInputPass");
            
            if(request.getParameter("logsub")!=null){
            //boolean res = proxy.adminBool(InputUsername, InputPassword);
            boolean res = true;
            if(res == true){
                String site = "http://localhost:8080/AP-web-client/index.jsp/AdminIndex.jsp";
                /*response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", site);*/
                response.sendRedirect(site);
            }else{
                out.println("Admin Login Failed");
                }
            }
            
            
        %></div><h3 style="color:crimson;"><c:set var="test1" value="<u>underlined</u>"/></h3>
                                    <div class="card-footer text-center py-3">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; TechMart United 2022</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

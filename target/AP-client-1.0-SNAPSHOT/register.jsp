<%-- 
    Document   : register
    Created on : Mar 6, 2022, 11:48:40 AM
    Author     : azlan
--%>

<%@page import="appack.User"%>
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
        <title>Register to TechMart</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputFirstName" name="inputFirstName" type="text" placeholder="Enter your first name" required>
                                                        <label for="inputFirstName">First name</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="inputLastName" name="inputLastName" type="text" placeholder="Enter your last name" required>
                                                        <label for="inputLastName">Last name</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputUsername" name="inputUsername" type="text" placeholder="Create a username" required>
                                                        <label for="inputUsername">Username</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" name="inputPassword" type="password" placeholder="Create a password" required>
                                                        <label for="inputPassword">Password</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                <input type="submit" class="btn btn-primary btn-block" value="Register & Login" name="logsub" input></div>
                                            </div>
                                        </form><%
                                                APservice_Service service = new APservice_Service();
                                                APservice proxy = service.getAPservicePort(); 
                                                
                                                User user = new User();

                                                String inputFirstName = request.getParameter("inputFirstName");
                                                String inputLastName = request.getParameter("inputLastName");
                                                String inputUsername = request.getParameter("inputUsername");
                                                String inputPassword = request.getParameter("inputPassword");
                                                user.setFirstName(inputFirstName);
                                                user.setLastName(inputLastName);
                                                user.setUsername(inputUsername);
                                                user.setPassword(inputPassword);
                                                
                                                    if(request.getParameter("logsub")!=null){
                                                    boolean res = proxy.addUser(user);           
                                                    if(res == true){
                                                        String site = "http://localhost:8080/AP-web-client/index.jsp/TechMartHome.jsp";
                                                        response.setStatus(response.SC_MOVED_TEMPORARILY);
                                                        response.setHeader("Location", site);
                                                    }else{
                                                        out.println("Registration Failed");
                                                        String test1 = "Registration Failed";
                                                        }
                                                    }
                                            %>
                                    </div><h3 style="color:crimson;"><c:set var="test1" value="<u>underlined</u>"/></h3>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="index.jsp">Have an account? Go to login</a></div>
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
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

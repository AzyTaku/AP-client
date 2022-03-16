<%-- 
    Document   : AdminDriver
    Created on : Mar 6, 2022, 9:37:28 PM
    Author     : azlan
--%>

<%@page import="web.Util"%>
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
        <title>Admin - Driver</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="AdminIndex.jsp">Admin Home</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="AdminLogin.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="AdminIndex.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-home fa-fw"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">General</div>
                            <a class="nav-link" href="AdminCustomer.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                                Customer
                            </a>
                            <a class="nav-link" href="AdminSalesAgent.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Sales Agent
                            </a>
                            <a class="nav-link" href="AdminSupplier.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-briefcase"></i></div>
                                Supplier
                            </a>
                            <a class="nav-link" href="AdminDriver.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-car"></i></div>
                                Driver
                            </a>
                            <a class="nav-link" href="AdminInventory.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-car"></i></div>
                                Inventory
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        System Admin
                    </div>
                </nav>
                <!-- end of Sidenav -->
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Driver</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="AdminIndex.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Driver</li>
                        </ol>
                        
                        
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                DataTable Example
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>USERNAME</th>
                                            <th>PASSWORD</th>
                                            <th>FIRST NAME</th>
                                            <th>LAST NAME</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>USERNAME</th>
                                            <th>PASSWORD</th>
                                            <th>FIRST NAME</th>
                                            <th>LAST NAME</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                        <%for(User u : Util.getUsers()) {%>
                            <tr>
                                <td><%out.print(u.getCustomerId());%></td>
                                <td><%out.print(u.getUsername());%></td>
                                <td><%out.print(u.getPassword());%></td>
                                <td><%out.print(u.getFirstName());%></td>
                                <td><%out.print(u.getLastName());%></td>
                            </tr>
                        <%}%>
                                </tbody>
                            <script>
                                $(document).ready( function () {
                                    $('#datatablesSimple').DataTable();
                                } );
                            </script>
                                </table>
                            </div>
                                
                        
                                <form>
                                    
                                    
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputId" type="text" placeholder="inputId" required/>
                                                <label for="inputId">----  Input Id   -----</label>
                                            </div>
                                    
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
                                                        <input class="form-control" id="inputPassword" name="inputPassword" type="text" placeholder="Create a password" required>
                                                        <label for="inputPassword">Password</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                    <input type="submit" class="btn btn-primary btn-block" value="Update User" name="upd" input><br>
                                                <input type="submit" class="btn btn-primary btn-block" value="Delete User" name="dlt" input>
                                                </div>
                                            </div>
                                        </form>
                                <%
                                                APservice_Service service = new APservice_Service();
                                                APservice proxy = service.getAPservicePort(); 
                                                User u = new User();
                                                
                                                String getStringId = request.getParameter("inputId");
                                                //int updintId = Integer.parseInt(getStringId);
                                                
                                                String updFirstName =request.getParameter("inputFirstName");
                                                String updLastName =request.getParameter("inputFirstName");
                                                String updUsername =request.getParameter("inputFirstName");
                                                String updPassword =request.getParameter("inputFirstName");
                                                
                                                //Update User
                                                if(request.getParameter("upd")!=null){
                                                    try{
                                                    int updintId = Integer.parseInt(getStringId);
                                                    u.setCustomerId(updintId);    //   coverts String to Int 
                                                    u.setFirstName(updFirstName);
                                                    u.setLastName(updLastName);
                                                    u.setUsername(updUsername);
                                                    u.setPassword(updPassword);
                                                    
                                                    boolean res = proxy.updateUser(u);
                                                    if(res==true){
                                                        out.println("Update Success!");
                                                    }else{
                                                        out.println("Update Failed!");
                                                        }
                                                    }
                                                    catch (NumberFormatException ex){
                                                    ex.printStackTrace();
                                                    }
                                                }
                                                //Delete User
                                                if(request.getParameter("dlt")!=null){
                                                    try{
                                                    int dltInt = Integer.parseInt(getStringId);
                                                    boolean dltres = proxy.deleteUser(dltInt);
                                                    
                                                    if(dltres==true){
                                                        out.println("Update Success!");
                                                    }else{
                                                        out.println("Update Failed!");
                                                    }
                                                    
                                                    }
                                                    catch (NumberFormatException ex){
                                                    ex.printStackTrace();
                                                    }
                                                }
                                                
                                                %>
                        </div>
                    </div>
                        
                                
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; TechMart United 2022</div>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>

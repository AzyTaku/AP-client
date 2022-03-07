<%-- 
    Document   : AdminCustomer
    Created on : Mar 6, 2022, 9:36:46 PM
    Author     : azlan
--%>

<%@page import="web.Util"%>
<%@page import="appack.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin - Customer</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Admin Home</a>
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
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
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
                        <h1 class="mt-4">Customer</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="AdminIndex.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Customer</li>
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
                                <div class="card mb-4">
                            <div class="card-body">
                                <form>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" placeholder="inputId" />
                                                <label for="inputId">---  ID  ---</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" />
                                                        <label for="inputFirstName">First name</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" />
                                                        <label for="inputLastName">Last name</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" type="password" placeholder="Create a password" />
                                                        <label for="inputPassword">Password</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" type="password" placeholder="Confirm password" />
                                                        <label for="inputPasswordConfirm">Confirm Password</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block">Update User</a></div><br>
                                                <div class="d-grid"><a class="btn btn-primary btn-block">Delete User</a></div>
                                            </div>
                                        </form>
                            </div>
                                </div>
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

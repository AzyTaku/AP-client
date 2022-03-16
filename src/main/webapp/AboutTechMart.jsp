<%-- 
    Document   : AboutTechMart
    Created on : Mar 15, 2022, 7:15:55 PM
    Author     : azlan
--%>

<%@page import="web.Util"%>
<%@page import="appack.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TechMart HomePage</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles2.css" rel="stylesheet" />
    </head>
    <body><%  /*
            Customer cu = Util.authenticate(request, response, session);
            if (cu != null ) {
               out.print("<h1> Welcome " + cu.getUsername()+ "</h1>");
            } */
        %>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="TechMartHome.jsp">TechMart</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="TechMartHome.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link active" href="AboutTechMart.jsp">About</a></li>
                        
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i><a href="http://localhost:8080/AP-client/index.jsp/">
                            Log Out</a>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">TechMart</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Settle for the Best!</p><br><br>
                    <p class="lead fw-normal text-white-50 mb-0">We are Absolutely a Legitimate business! We are not a Scam! Your Details are all gathered here! Please Help...We Provide the best accessories and best products available in the market! definitely not chinese or fake! 100% Legit!!</p>
                </div>
            </div>
        </header>
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; TechMart United 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

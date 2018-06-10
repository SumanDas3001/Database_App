<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABOUT</title>
    </head>
    <body>
        <%
            if(session.getAttribute("userid")==null)
            {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">TITLE & BLOG</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="#">Hi <c:out value="${sessionScope.username}"/></a>
                <a class="p-2 text-dark" href="about.jsp">Home</a>
                <a class="p-2 text-dark" href="welcome.jsp">Post</a>
                
                <a class="p-2 text-dark" href="profile.jsp">Create Blog</a>
            </nav>
            <a class="btn btn-outline-primary" href="logout">Sign up</a> 
        </div>
        <div class="jumbotron">
            <h1 class="display-3">Hello, <c:out value="${sessionScope.username}"/></h1>
            <p class="lead">This is a simple Jsp, Servlet Project and some Bootstrap-style component for extra attention to featured content or information.</p>
            <hr class="my-4">
            <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
            
            <p class="lead">
              <a class="btn btn-primary btn-lg" href="more/more.jsp" role="button">Learn more</a>
            </p>
        </div>
        
    </body>
</html>

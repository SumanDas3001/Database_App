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
        <title>CREATE BLOG</title>
    </head>
    <body>
        <style>
            textarea#test
            {
                resize: none;
            }
            
        </style>
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
                <a class="p-2 text-dark" href="welcome.jsp">Posts</a>   
                
                <a class="p-2 text-dark" href="profile.jsp">Create Blog</a>
                <!--<a class="p-2 text-dark" href="logout">Logout</a> -->
            </nav>
        <a class="btn btn-outline-primary" href="logout">Sign up</a> 
        </div>
                 
        
        <form method="post" action="profiledb">  
            
            
        <div class="container">
            <form>
                <div class="form-group">
                    <label for="usr">Title:</label>
                    <input type="text" name="utitle" class="form-control" id="usr" placeholder="Enter title">
                </div>
                <div class="form-group">
                    <label for="comment">Body:</label>
                </div>
                <textarea id="test" name="ubody" class="form-control" rows="10" cols="10" id="comment" placeholder="Enter body"></textarea><br>
            </form>
            <button class="btn btn-primary btn-block" type="submit">Save</button>
           
        </div>
            
            
            <!--
            <div class="form-group">
                <div class="col-md-4 mb-3">
                    <label for="disabledTextInput">Title</label>
                    <input type="test" id="validationServer01" name="utitle" class="form-control is-valid" placeholder="Enter title">
                </div>
            </div>
                
            <div class="form-group">
                <div class="col-md-4 mb-3">
                    <label for="validationServer01">Body</label>
                    <textarea class="form-control is-valid" rows="5" id="validationServer01" name="ubody" placeholder="Enter body"></textarea>
                </div>
            </div>
            
            <div class="col-md-4 mb-3">
                <button class="btn btn-primary" type="submit">Submit Post</button>
            </div>
            -->
        </form>
    </body>
</html>

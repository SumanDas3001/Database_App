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
        <title>REGISTER</title>
    </head>
    <body>
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">TITLE & BLOG</h5> 
        </div>
        <div class="jumbotron text-center">
            <h1 class="h3 mb-3 font-weight-normal">Register</h1> 
            <center>
                <form method="post" action="registerdb">
                    <div class="form-group">
                        <div class="col-md-4 mb-3">
                            <label for="disabledTextInput" class="sr-only">Enter User Id</label>
                            <input type="text" id="inputEmail" name="id" class="form-control" placeholder="Enter User Id" required autofocus>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="inputPassword" class="sr-only">User Name</label>
                            <input type="text" id="inputPassword" name="name" class="form-control" placeholder="User Name" required autofocus>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="Password" required autofocus>
                        </div>
                        <div class="col-md-4 mb-3">
                            <button class="btn btn-primary btn-block" type="submit">Save</button>
                        </div>
                        <div class="col-md-4 mb-3">  
                            <a href="login.jsp">@Login</a>
                        </div>
                    </div>
                </form>
            </center>
        </div>
    </body>
</html>

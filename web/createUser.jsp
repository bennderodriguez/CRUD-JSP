<%-- 
    Document   : createUser
    Created on : 9/11/2018, 04:23:40 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.MySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <div class="card">
                <div class="card-header">Create User</div>
                <div class="card-body">
                    <form action="create.jsp" method="post">
                        <div class="form-group">
                            <label for="Firstname">Firstname</label>
                            <input type="text" class="form-control" id="First_Name" name="First_Name" required>
                        </div>
                        <div class="form-group">
                            <label for="LastName">Last Name</label>
                            <input type="text" class="form-control" id="Last_Name" name="Last_Name" required>
                        </div>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" id="title" name="title" required>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Actualizar</button>
                        <a href="GetUSer.jsp" class="btn btn-info">Volver</a>
                    </form>
                </div> 
            </div>
        </div>

    </body>
</html>
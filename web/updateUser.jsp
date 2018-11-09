<%-- 
    Document   : updateUser
    Created on : 9/11/2018, 12:34:42 PM
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
                <div class="card-header">Update User</div>
                <div class="card-body">
                    <form action="update.jsp" method="post">
                        <%
                            String id = request.getParameter("id");
                            out.print("<p>" + id + "</p>");
                            DAO.MySQL sql = new MySQL();
                            ResultSet rs = sql.getUSer(Integer.parseInt(id));

                            while (rs.next()) {
                                //int id = rs.getInt("id");
                                String sid = rs.getString("id");
                                String First_Name = rs.getString("First_Name");
                                String Last_Name = rs.getString("Last_Name");

                                String title = rs.getString("Title");

                                System.out.println("id : " + id);
                                System.out.println("First_Name : " + First_Name);
                                System.out.println("Last_Name : " + Last_Name);
                                System.out.println("title : " + title);

                                out.print("<div class='form-group'><label for='ID'>ID</label><input type='text' class='form-control' id='id' name='id' value='" + id + "' readonly='true' ></div>");
                                out.print("<div class='form-group'><label for='First_Name'>Nombre</label><input type='text' class='form-control' id='First_Name' name='First_Name' value='" + First_Name + "' maxlength='12'></div>");

                            }

                        %>
                        <button type="submit" class="btn btn-primary">Actualizar</button>
                        <a href="GetUSer.jsp" class="btn btn-info">Volver</a>
                    </form>
                </div> 
            </div>
        </div>

    </body>
</html>


<%-- 
    Document   : GetUSer
    Created on : 9/11/2018, 11:49:28 AM
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
                <div class="card-header"><h2>List Of user</h2><a href="createUser.jsp" class="btn btn-success">Add User</a></div>
                <div class="card-body">

                    <table class="table">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Firstname</th>
                                <th>Last Name</th>
                                <th>title</th>
                                <th>Update</th>
                                <th>Delete</th>

                            </tr>
                        </thead>
                        <tbody>

                            <%
                                DAO.MySQL sql = new MySQL();

                                ResultSet rs = sql.prueba();

                                while (rs.next()) {
                                    //int id = rs.getInt("id");
                                    String id = rs.getString("id");
                                    String First_Name = rs.getString("First_Name");
                                    String Last_Name = rs.getString("Last_Name");

                                    String title = rs.getString("Title");

                                    System.out.println("id : " + id);
                                    System.out.println("First_Name : " + First_Name);
                                    System.out.println("Last_Name : " + Last_Name);
                                    System.out.println("title : " + title);

                                    out.print("<tr>");
                                    out.print("<td>" + id + "</td>");
                                    out.print("<td>" + First_Name + "</td>");
                                    out.print("<td>" + Last_Name + "</td>");
                                    out.print("<td>" + title + "</td>");
                                    out.print("<td><a href='updateUser.jsp?id="+id+"' class='btn btn-info'>Actualizar</a></td>");
                                    out.print("<td><a href='deleteUser.jsp?id="+id+"' class='btn btn-warning'>Delete</a></td>");
                                    out.print("</tr>");

                                }

                            %>

                        </tbody>
                    </table>
                </div> 
            </div>   

        </div>

    </body>
</html>

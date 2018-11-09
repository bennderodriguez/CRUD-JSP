<%-- 
    Document   : update
    Created on : 9/11/2018, 01:07:46 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.MySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String First_Name = request.getParameter("First_Name");
            out.print("<p>" + id + "</p>");
            out.print("<p>" + First_Name + "</p>");
            DAO.MySQL sql = new MySQL();

            sql.updateClient(Integer.parseInt(id), First_Name);

            out.print("<a href='updateUser.jsp?id="+id+"'>Regresar</a>");
        %>

    </body>
</html>

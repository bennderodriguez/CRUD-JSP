<%-- 
    Document   : create
    Created on : 9/11/2018, 04:28:46 PM
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
            out.print("<p>" + id + "</p>");
            DAO.MySQL sql = new MySQL();

            sql.deleteClient(Integer.parseInt(id));

            out.print("<a href='GetUSer.jsp'>Regresar</a>");
        %>

    </body>
</html>
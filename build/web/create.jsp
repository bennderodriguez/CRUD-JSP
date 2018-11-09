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
            String First_Name = request.getParameter("First_Name");
            String Last_Name = request.getParameter("Last_Name");
            String title = request.getParameter("title");
            out.print("<p>" + First_Name + "</p>");
            out.print("<p>" + Last_Name + "</p>");
            out.print("<p>" + title + "</p>");
            DAO.MySQL sql = new MySQL();

            //sql.updateClient(Integer.parseInt(id), First_Name);
            
            sql.createUSer(First_Name, Last_Name, title);

            out.print("<a href='GetUSer.jsp'>Regresar</a>");
        %>

    </body>
</html>
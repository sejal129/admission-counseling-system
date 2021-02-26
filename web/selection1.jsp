<%-- 
    Document   : selection1
    Created on : 14 Mar, 2020, 10:58:44 AM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
    try{
        
    int rank;
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
    Statement stmt=con.createStatement();
    int z=stmt.executeUpdate("insert into selected_students1 (select * from selected_students) order by rank ");
    if(z>0)
    {
        out.println("insert in selection1");
        response.sendRedirect("selection.jsp");
    }
    else
    {
        out.println("error in seletion1");
    }
    }
    catch(Exception e)
    {
        out.println("");
    }
  
%>
<%-- 
    Document   : doctorLogin
    Created on : Mar 14, 2020, 11:24:19 AM
    Author     : Lenovo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssLogin.css">
        <title>JSP Page</title>
        
    </head>
    <body>
        <form class="box" method="post">
            <h2>WELCOME  DOCTOR!</h2>
            <input type="text" name="u1" placeholder="Username">
            <input type="password" name="p1" placeholder="Password">
            <input type="submit" value="Login" name="s1">
        </form>
    </body>
</html>

<%  
    try{
        int roll;
    String uid,pwd;
    int flag=0;
    uid=request.getParameter("u1");
    pwd=request.getParameter("p1");
     Class.forName("org.apache.derby.jdbc.ClientDriver");               
       Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
       Statement stmt=conn.createStatement();
    
   if(request.getParameter("s1")!=null)
    {
       ResultSet rs=stmt.executeQuery("select * from dlogin");
       while(rs.next())
       {
           if((uid.equals(rs.getString(1)))&&(pwd.equals(rs.getString(2))))
           { 
                out.println("login is successful");
                response.sendRedirect("doctor.jsp");    
           }
       }
    }
    }catch(Exception e){
        out.println("error");
    }
    %>
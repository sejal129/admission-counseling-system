<%-- 
    Document   : selection
    Created on : 2 Mar, 2020, 11:37:25 PM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head><style>
body{
	background-image: url("Images/simple.jfif");
	background-size: 100% ;
  	background-repeat: no-repeat;
     
        
    }
</style></head>
    <body>
<form name="f" method="POST">
    <table>
        <tr><td><label>Enter the column you want to change</label>
            </td></tr>
        <select name="change">
        <option>choose--</option>
        <option>name</option>
        <option>username</option>
        <option>password</option>
        <option>emarks</option>
        <option>rank</option></select>
        <input type="submit" value="enter" name="enter">
    </table>
    </form>
<%
    try
    {
    String username,name,pass;
        int emarks,rank,examroll;
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
     
    if(request.getParameter("enter")!=null)
    {     
        if(request.getParameter("change").equals("username"))
        {
            response.sendRedirect("update1.jsp");
        }
        if(request.getParameter("change").equals("name"))
        {
            response.sendRedirect("update2.jsp");
        }
        if(request.getParameter("change").equals("emarks"))
        {
            response.sendRedirect("update3.jsp");
        }
        if(request.getParameter("change").equals("password"))
        {
            response.sendRedirect("update4.jsp");
        }
        if(request.getParameter("change").equals("rank"))
        {
            response.sendRedirect("update5.jsp");
        }
        
    }
    }
catch(Exception e)
{}
%>
 </form> 
</body>
</html>
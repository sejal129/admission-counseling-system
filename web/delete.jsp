<%-- 
    Document   : delete
    Created on : 7 Mar, 2020, 7:30:53 PM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        
    <body>
        <h1>Hello World!</h1>
   

<form name="f1" method="POST">
    <tr>
    <label>EXAM ROLLNO.</label></td>
    <td><input type="text" name="eroll" required><br></td></tr>
    <td><input type="submit" name="delete" value="delete"></td>
    </form>
    <%
        try{
        String username,name,pass;
        int emarks,rank,examroll;
         Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
          
        if(request.getParameter("delete")!=null)
        {
            Statement stmt3=con.createStatement();
            examroll=Integer.parseInt(request.getParameter("eroll"));
            int y=stmt3.executeUpdate("delete from selected_students where examrollno="+examroll+" ");
            if(y>0)
            out.println("deleted");
            else
            out.println("enter valid rollno");
        }
        }catch(Exception e){}%>
 </body>
</html>
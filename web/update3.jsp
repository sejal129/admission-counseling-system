<%-- 
    Document   : update2
    Created on : 5 Mar, 2020, 7:00:23 PM
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
        <form name="f7" method="POST">
                <table>
            <tr><td><label>Enter the marks</label>
            </td>
            <td><input type="text" name="marks">
            </td>
            <tr><td><label>Enter the Exam RollNo.</label></td>
            <td><input type="text" name="examroll"></td>
            <td><input type="submit" name="up_date" value="update1"></td>
            </tr>
                </table>
                </form>
        <%
                 
            String username,name,pass;
        int emarks,rank,examroll;
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
            if(request.getParameter("up_date")!=null)
              
            {
                    
 
                emarks=Integer.parseInt(request.getParameter("marks"));
                examroll=Integer.parseInt(request.getParameter("examroll"));
                Statement stmt2=con.createStatement();
                int x=stmt2.executeUpdate("Update selected_students set emarks="+emarks+" where examrollno="+examroll+" ");
                if(x>0)
                {   
                    out.println("updated successfully");
                    response.sendRedirect("selection.jsp");
                }
                else
                {
                     out.println("error found");
                }
              
              
            }
            %>
    </body>
</html>

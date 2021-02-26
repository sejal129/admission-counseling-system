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
            <tr><td><label>Enter the password</label>
            </td>
            <td><input type="text" name="password">
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
                    
                out.println(request.getParameter("name"));
                out.println(Integer.parseInt(request.getParameter("examroll")));
                pass=request.getParameter("password");
                examroll=Integer.parseInt(request.getParameter("examroll"));
                Statement stmt2=con.createStatement();
                int x=stmt2.executeUpdate("Update selected_students set password='"+pass+"' where examrollno="+examroll+" ");
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

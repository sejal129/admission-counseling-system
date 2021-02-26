<%-- 
    Document   : registered
    Created on : 3 Mar, 2020, 7:11:10 PM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <form name="f" method="POST">
        <input type="submit" name="btnview" value="view" >
        </form>
    </body>
</html>
<% 
    try {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
        Statement stmt=conn.createStatement();
        if(request.getParameter("btnview")!=null)
        {
             
            ResultSet rs=stmt.executeQuery("Select examrollno,sname from register");
            %>
            <form name="f" method="POST">
               <table border = "1" cellpadding="5">
                <thead>
                <th>Exam Roll Number</th>
                <th>Name</th>
                </thead>
                <%
                    while(rs.next())
                        
                    {
                        
                        %>
                        <tr>
                            <td>
                                <%
                                    out.println(rs.getInt(1));
                                    %>
                            </td>
                            <td>
                                <%
                                    out.println(rs.getString(2));
                                    %>
                                    
                            </td>
                        </tr>
                    </table>
               </form><%
                            }
}
}catch(Exception e)
{
out.println(e);
}
 %>   

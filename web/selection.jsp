<%-- 
    Document   : selection
    Created on : 2 Mar, 2020, 11:37:25 PM
    Author     : Admin
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <style>
body{
	background-image: url("Images/simple.jfif");
	background-size: 100%;
  	background-repeat: no-repeat;
    }
</style>
    </head>
    <body>
        
        <div class="fit">
        <form>
            
            <input type="submit" name="Insert" value="Insert">
            <input type="submit" name="View" value="View">
            <input type="submit" name="Update" value="Update">
            <input type="submit" name="Delete" value="Delete"><br><br>
            
            <input type="submit" name="Mail" value="Mail">
            <input type="submit" name="home" value="home">
            <input type="submit" name="all" value="all">
        </form>
        </div>
    </body>
</html>
<%
    try
    {
         String username,name,pass;
        int emarks,rank,examroll;
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
        Statement stmt=con.createStatement();
        if(request.getParameter("View")!=null)
        {
            ResultSet rs=stmt.executeQuery("Select * from selected_students order BY rank");
            
            %>
            <table border = "1" cellpadding="5">
                <thead>
                <th>Exam Roll Number</th>
                <th>Name</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Exam Marks</th>
                <th>Rank</th>
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
                             <td>
                                <%
                                    out.println(rs.getString(3));
                                    %>
                                    
                            </td>
                            <td>
                                <%
                                    out.println(rs.getString(4));
                                    %>
                                    
                            </td>
                            <td>
                                <%
                                    out.println(rs.getInt(5));
                                    %>
                                    
                            </td>
                            <td>
                                <%
                                    out.println(rs.getInt(6));
                                    %>
                                    
                            </td>
                            
                        </tr>
                        <%
                    }
                 %>
            </table>
            <%
        }
    if(request.getParameter("Insert")!=null)               
    {   
        %>
        <form>
            <table>
                <tr>
                <td>
                <label>EXAM ROLLNO.</label></td>
                <td><input type="text" name="eroll" required="Enter Valid Number"><br></td></tr>
                <tr><td>
                <label>NAME</label></td>
                <td><input ty
                           pe="text" name="name" required><br></td></tr>
                <tr><td><label>USERNAME</label></td>
                <td><input type="text" name="uname" required><br></td></tr>
                <tr><td><label>PASSWORD</label></td>
                <td><input type="text" name="pass" required><br></td></tr>
                <tr><td><label>EMARKS</label></td>
                <td><input type="text" name="emarks" required><br></td><tr>
                <tr><td><label>RANK</label></td>
                <td><input type="text" name="rank" required><br></td></tr>
                <tr><td><input type="submit"  name="insert" value="ENTER"><br></td></tr>
            </table>
        </form>
          
        <%  
    }
 if(request.getParameter("insert")!=null)
        {
        examroll=Integer.parseInt(request.getParameter("eroll"));
        name=request.getParameter("name");
        username=request.getParameter("uname");
        pass=request.getParameter("pass");
        emarks=Integer.parseInt(request.getParameter("emarks"));
        rank=Integer.parseInt(request.getParameter("rank"));


       
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
            Statement stmt1=con1.createStatement();
            int x=stmt1.executeUpdate("insert into selected_students values("+examroll+",'"+name+"','"+username+"','"+pass+"',"+emarks+","+rank+") ");
  
            
           
            if(x>0)
            {
                out.println("record inserted successfully");
                try
                {
                Connection con2=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
                Statement stmt4=con2.createStatement();
                Statement stmt5=con2.createStatement();
                Statement stmt6=con2.createStatement();
                int z=stmt4.executeUpdate("insert into selected_students1 select * from selected_students where examrollno="+examroll+"");
                if(z>0)
                {
                    
                    int z2=stmt6.executeUpdate("truncate table selected_students2");
                    int z1=stmt5.executeUpdate("insert into selected_students2 select * from selected_students1 order by rank");
                    if(z1>0)
                    {
                        out.println("Good job!");
                    }
                    else
                    {
                        out.println("not well");
                    }
                    
                }
                }
                catch(Exception e)
                {
                    out.println("error");
                }
            }
            else
            {
                out.println("error found");
            }
            
             
        }
if(request.getParameter("Update")!=null)
{
response.sendRedirect("update.jsp");
}

if(request.getParameter("Delete")!=null)
{%>

    <form name="f1" method="POST">
    <tr>
    <label>EXAM ROLLNO.</label></td>
    <td><input type="text" name="eroll" required="Enter Valid Number"><br></td></tr>
    <td><input type="submit" name="delete" value="delete"></td>
    </form>
    <%
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
}
if(request.getParameter("Mail")!=null)
{
    response.sendRedirect("mail.jsp");
}
if(request.getParameter("home")!=null)
{
    response.sendRedirect("master.jsp");
}
if(request.getParameter("all")!=null)
{
    response.sendRedirect("allot.jsp");
}
}
catch(Exception e)
{}

%>

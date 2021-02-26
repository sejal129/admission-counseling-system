<%-- 
    Document   : register
    Created on : Feb 19, 2020, 8:04:01 AM
    Author     : anushka
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.JOptionPane"%>


<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="sty.css">
    </head>
    <body>
        
        <div class="LoginBox">
            <img src="Images/hhh.jpg" class="user">
            <h2>WELCOME STUDENT!</h2>
            <form id="f1">
                <p>Student Name</p>
                <input type="text" name="studentname"  placeholder="Enter your Name" required>
                <p>Exam RollNo</p>
                <input type="text" name="rollno." placeholder="Enter Exam RollNo" required>
                <p>Already Registered? 
                <a href="b.jsp">Login</a>
                </p><br><br>
                
                
                <input type="submit" value="Get Login Info" name="btnview"><br><br>
                
        <div class="tooltip">
                    <span
                        class="tooltiptext">Please get your Username and Password before getting Registered by clicking on "Get Login Info" button.</span>
                <input type="submit" value="Register" name="register">
        </div>
            </form>
        </div>
    </body>
</html>
 



<%
      try{
           String name;
        int examrollno,roll;
       
       
  if(request.getParameter("btnview")!=null)
    {   
          Class.forName("org.apache.derby.jdbc.ClientDriver");              
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
        Statement stmt=conn.createStatement();
         roll=Integer.parseInt(request.getParameter("rollno."));
            ResultSet rs1=stmt.executeQuery("Select username,password from selected_students where examrollno="+roll+" ");
            
            %>
            <center>
            <table  cellpadding="5">
                <thead>
                <th>Username</th>
                <th>Password</th>
            </thead>
                <%
                    while(rs1.next())
                    {
                        %>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                         <br><br><br><br><br><br><br><br><br>
                        <tr>
                           
                            <td>
                                <%
                                    out.println(rs1.getString(1));
                                    %>
                            </td>
                            <td>
                                <%
                                    out.println(rs1.getString(2));
                                    %>
                            </td>
                        </tr>
                 
                        <%
                    }
                 %>
            </table>
            </center>
            <%
   } 
   
   if(request.getParameter("register")!=null)
    {
        Class.forName("org.apache.derby.jdbc.ClientDriver");              
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
        Statement stmt=conn.createStatement();
       
        name=request.getParameter("studentname");
        examrollno=Integer.parseInt(request.getParameter("rollno."));
    
       
       
        ResultSet rs=stmt.executeQuery("select * from pro.selected_students");
      
        while(rs.next())
        {
            if((name.equals(rs.getString(2)))&&(examrollno==rs.getInt(1)))
            { 
                
                out.println("you have successfully registered");
                response.sendRedirect("b.jsp");
            }
            else{
                %>
                <script>
                alert("You have not been selected");
                </script>
                
                
                <%
                //out.println("you are not selected");
                
        }
}
        
    }
    }catch(Exception e){}
    
    

%> 
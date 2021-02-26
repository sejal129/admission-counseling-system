<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

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
            <form>
                <p>Username</p>
                <input type="text" name="username" placeholder="Enter Username">
                <p>Password</p>
                <input type="password" name="password" placeholder="Enter Password" ><br><br>
                <p>Didn't Registered?
                    <a href="register.jsp">Register</a></p><br><br>
                <input type="submit" value="Sign In" name="login">
            </form>
        </div>
    </body>
</html>


<%  
    try{
      
    String uid,pwd;
  
    uid=request.getParameter("username");
    pwd=request.getParameter("password");
    
     Class.forName("org.apache.derby.jdbc.ClientDriver");
                      
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
       Statement stmt=conn.createStatement();
   
   
   if(request.getParameter("login")!=null)
    {
        
       
       ResultSet rs=stmt.executeQuery("select * from selected_students");
       while(rs.next())
       {
           if((uid.equals(rs.getString(3)))&&(pwd.equals(rs.getString(4))))
           { 
                out.println("login is successful");
                response.sendRedirect("new.jsp");    
           }
       }
    }
      
    
    }catch(Exception e){}
    
    
    %>
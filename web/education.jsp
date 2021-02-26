<%-- 
    Document   : education
    Created on : Feb 13, 2020, 10:41:03 PM
    Author     : Lenovo
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<%@page import="java.io.File" %>
<%@page import="java.io.FileInputStream" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="newcss2.css">
        
       <title>Entering details</title>
<style>
body{
	background-image: url("Images/ho.jpg");
	background-size: 100% ;
  	background-repeat: no-repeat;
    }
</style>
</head>
    <body>
		<div class="register">
                    <h1><strong>Step 3: EDUCATIONAL QUALIFICATION<strong></h1><br><br>
        <form method="post" id="register" action="">
	    <label>Exam RollNo*</label><br>
            <input type="text" name="txtrollno" id="rollno" placeholder="Enter your rollno" required><br><br>  	
            <label>10th Marks*</label><br>                   
 <input type="number" name="mnum1" id="marks" placeholder="Enter your 10th marks" required><br><br>
            <label>12th Marks*</label><br>
            <input type="number" name="mnum" id="marks1" placeholder="Enter your 12th marks" required><br><br> 
            <label>Upload Your Photo*</label><br>
            <input type="file" name="img" ><br><br>
   
           

            <input type="submit" name="btnnext" value="Next" id="butt1">
            
        </form>
	</div>
    </body>
</html>
<%
    try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
        Statement stmt=conn.createStatement();
        if(request.getParameter("btnnext")!=null)
        {
            
          //  String pic=request.getParameter("img");
            int roll=Integer.parseInt(request.getParameter("txtrollno"));
            int num=Integer.parseInt(request.getParameter("mnum1"));
            int num1=Integer.parseInt(request.getParameter("mnum"));
            //File file=new File(pic);
            //FileInputStream fis=new FileInputStream(file);
            int x=stmt.executeUpdate("insert into educational_details(examrollno,tenmarks,twemarks)values("+roll+","+num+","+num1+")");
           
           
           // PreparedStatement ps=conn.prepareStatement("insert into educational_details(examrollno,tenmarks,twemarks)values(?,?,?)"); 
      
           // ps.setInt(1,roll);
           // ps.setInt(3,num);
           // ps.setInt(4,num1);
            //ps.setBinaryStream(5,fis,(int)file.length());
            
          //  int x=ps.executeUpdate();
            //int x=stmt.executeUpdate("insert into educational_details(examrollno,tenmarks,twemarks,photo)values(("+roll+","+num+","+num1+")");
            if(x>0)
            {
                response.sendRedirect("medical.jsp");
                //ps.close();
                //fis.close();
            }
            
            else{
                
                %>
                <script>
                    alert("Error! Please enter your details carefully");
                    </script>
                    <%
            }
        }
        
         
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>     		 
            
    

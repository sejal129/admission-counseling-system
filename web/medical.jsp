<%-- 
    Document   : medical
    Created on : Feb 13, 2020, 10:44:27 PM
    Author     : Lenovo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="newcss3.css">
        <title>Entering Details</title>
    <style>
body{
	background-image: url("Images/ho.jpg");
	background-size: 100% 100%;
  	background-repeat: repeat;
       
        
    }
</style>
</head>
    <body>
<div class="register">
    <h1><strong>Step 4: MEDICAL RECORD</strong></h1><br><br>
        <form method="post" id="register" action="">
	    <label>Exam Rollno</label><br>
            <input type="number" name="txtrollno" id="rollno" placeholder="Enter your rollno" required><br><br> 
            <label>Student Name</label><br>
            <input type="text" name="txtname" id="name" placeholder="Enter your name" required><br><br>  	
            <label>Height(in cm)</label><br>                   
 <input type="number" name="mnum" id="height" placeholder="Enter your Height"  required><br><br>
            <label>Weight(in Kg)</label><br>
            <input type="number" name="mnum1" id="weight" placeholder="Enter your Weight"  required><br><br>
            
            <label>Date of Birth</label><br>
            <input type="date" id="dat" name="db" min="01/01/1990" required><br><br>
            
            <label>Medical History(if any)</label><br>
            <textarea name="recom" rows="6" cols="37" placeholder="Any Medical History?">
            </textarea><br><br>
            
            
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
            int roll=Integer.parseInt(request.getParameter("txtrollno"));
            String sname=request.getParameter("txtname");
            int height=Integer.parseInt(request.getParameter("mnum"));
            int weight=Integer.parseInt(request.getParameter("mnum1"));
            String iss=request.getParameter("recom");
            String d=request.getParameter("db");
            
          
            int x=stmt.executeUpdate("insert into medical_details(examrollno,sname,height,weight,dob,mhistory)values("+roll+",'"+sname+"',"+height+","+weight+",'"+d+"','"+iss+"')");
            if(x>0)
            {
                response.sendRedirect("branch.jsp");
            }
            else
                System.out.println("Please enter your details carefully");
        }
       
        
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>     		 
            
    


    
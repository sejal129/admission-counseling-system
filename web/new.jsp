<%-- 
    Document   : new
    Created on : Feb 13, 2020, 10:01:08 PM
    Author     : Lenovo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="newcss.css">
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
            <h1><strong>Step 1: PERSONAL DETAILS</strong></h1><br><br>
        <form method="post" id="register" action="">
            <label>Exam Rollno</label><br>
            <input type="number" name="txtrollno" id="rollno" placeholder="Enter your rollno" required><br><br>    
            <label>Full Name</label><br>         
            <input type="text" name="txtname" id="name" placeholder="Enter your Name" required><br><br>
            
            <label>Student's Aadhar no</label><br>
            <input type="number" name="txtaadhar" id="aadhar" placeholder="Enter your Aadhar card no" required><br><br> 
             <label>DOB</label><br>
            <input type="date" id="dat" name="db" min="01/01/1990" required><br><br>
            
             <label>Fathers Name</label><br>
             <input type="text" name="txtfname" id="fname" placeholder="Enter your Father name" required><br><br>    
             <label>Mothers Name</label><br>
             <input type="text" name="txtmname" id="mname" placeholder="Enter your Mothers name" required><br><br>    
           
              <label>Fathers Occupation</label></br>
              <input type="text" name="txtfocc" id="focc" placeholder="Enter your Fathers Occupation" required><br><br>    
              <label>Mothers Occupation</label><br>
              <input type="text" name="txtmocc" id="mocc" placeholder="Enter your Mothers Occupation" required><br><br>    
              <label>Gender</label><br>
              <input type="radio" name="radio" id="Female" value="Female"><span id="Female">&nbsp; Female</span>&nbsp;
               <input type="radio" name="radio" id="Male" value="Male"><span id="Male">&nbsp; Male</span>&nbsp;<br><br> 
                <label>Nationality</label><br>
                <input type="text" name="txtnational" id="national" placeholder="Enter your Nationality"><br><br>   
                <label>Religion</label><br>
                <input type="text" name="txtreligion" id="religion" placeholder="Enter your Religion" required><br><br>   
                <label>Caste</label><br>
                <input type="radio" name="radio1" id="SC" value="SC"><span id="SC">&nbsp; SC</span>&nbsp; 
                <input type="radio" name="radio1" id="ST" value="ST"><span id="ST">&nbsp; ST</span>&nbsp; 
                <input type="radio" name="radio1" id="OBC" value="OBC"><span id="OBC">&nbsp; OBC</span>&nbsp;
                <input type="radio" name="radio1" id="General" value="General"><span id="General">&nbsp; General</span>&nbsp; 
                <input type="radio" name="radio1" id="Other" value="Other"><span id="Other">&nbsp; Other</span>&nbsp;<br><br> 
                <input type="submit" name="btnpersonal" id="butt" value="Next">

		
        </form>
	</div>
    </body>
</html>
<%
    try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
        Statement stmt=conn.createStatement();
       
        if(request.getParameter("btnpersonal")!=null)
        {
           
            int a=Integer.parseInt(request.getParameter("txtaadhar"));
            String n=request.getParameter("txtname");
            String fname=request.getParameter("txtfname");
            String focc=request.getParameter("txtfocc");
            String mname=request.getParameter("txtmname");
            String mocc=request.getParameter("txtmocc");
            String rad=request.getParameter("radio");
            String nat=request.getParameter("txtnational");
            String rel=request.getParameter("txtreligion");
            String cast=request.getParameter("radio1");
            int roll=Integer.parseInt(request.getParameter("txtrollno"));
            String d=request.getParameter("db");
            int x=stmt.executeUpdate("insert into personal_details(SName,AdhaarNo,fname,focc,mname,mocc,gender,caste,religion,examrollno,nationality,date1)values('"+n+"',"+a+",'"+fname+"','"+focc+"','"+mname+"','"+mocc+"','"+rad+"','"+cast+"','"+rel+"',"+roll+",'"+nat+"','"+d+"')");
            if(x>0)
            {
                response.sendRedirect("contact.jsp");
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
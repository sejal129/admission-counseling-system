<%-- 
    Document   : contact
    Created on : Feb 13, 2020, 10:25:11 PM
    Author     : Lenovo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss1.css">
        
       <title>Entering details</title>
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
    <h1><strong>Step 2: CONTACT DETAILS</strong></h1><br><br>
            <form method="post" id="register" action="">
            <label>Exam Rollno</label><br>
            <input type="number" name="txtrollno" id="rollno" placeholder="Enter Your RollNo" required><br><br>    
 	    <label>Email-id</label><br>                
  	    <input type="email" name="txtid" id="eid" placeholder="example@domain.com" required><br><br>
            <label>Permanent Address Line-1</label><br>
            <input type="text" name="txtadd" id="add" placeholder="Enter your street address" required><br><br> 
             <label>Permanent Address Line-2</label><br>
            <input type="text" name="txtadd1" id="add1" placeholder="Enter your street address" required><br><br> 
            <label>City</label><br>
            <input type="text" name="txtcity" id="city" placeholder="Enter your city" required><br><br>    
            <label>State</label><br>
            <input type="text" name="txtstate" id="state" placeholder="Enter your state" required><br><br>    
            <label>Pincode</label><br>
            <input type="number" name="txtpin" id="pin" placeholder="Enter Pincode" min="111111" max="999999" required><br><br>    
            <label>Student Mobile-no</label><br>
            <select id="ph">
 	    <option>+91</option>
	    <option>+92</option>
	    <option>+93</option>
            <option>+94</option>
	    <option>+95</option>
	    </select>
            <input type="number" name="Mnum" id="num" placeholder="Enter Your Mobile-No"  required="you are wrong"><br><br> 
            <label>Guardians Mobile-no</label><br>
	    <select id="ph1">
 	    <option>+91</option>
	    <option>+92</option>
	    <option>+93</option>
            <option>+94</option>
	    <option>+95</option>
	    </select> 
            <input type="number" name="Mnum1" id="num1" placeholder="Enter Guardian's Mobile-No" required><br><br>
            
           
           
	    
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
            String e=request.getParameter("txtid");
            String add=request.getParameter("txtadd");
            String add1=request.getParameter("txtadd1");
            String city=request.getParameter("txtcity");
            String sstate=request.getParameter("txtstate");
            int pin=Integer.parseInt(request.getParameter("txtpin"));
            int num=Integer.parseInt(request.getParameter("Mnum"));
            int num1=Integer.parseInt(request.getParameter("Mnum1"));
            int x=stmt.executeUpdate("insert into contact_details(examrollno,emailid,address1,address2,city,state,pincode,phoneno,gno) values("+roll+",'"+e+"','"+add+"','"+add1+"','"+city+"','"+sstate+"',"+pin+","+num+","+num1+")");
            if(x>0)
            {
                response.sendRedirect("education.jsp");
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
            







	


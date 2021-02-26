<%-- 
    Document   : studentlogin
    Created on : Feb 20, 2020, 8:58:01 PM
    Author     : anushka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
<style>

body{
    background-image: url("Images/campus.jpg");
   
background-position: center;
background-repeat: no-repeat;
background-attachment:fixed;
background-size:100% 100%;
    
}
.button1{
    height:50px;
    width:300px;
    background-color:grey; 
    border-radius:8px;
    text-align:center;
    margin-left:75%;
    margin-top:20%;
    color:whitesmoke;
  
    opacity:0.9;
    font-size:20px;
    
}
.button2
{
    height:50px;
    width:300px;
    background-color:grey; 
    border-radius:8px;
    text-align:center;
    margin-left:75%;
    margin-top:3%;
    color:whitesmoke;
 
    opacity:0.9;
    font-size:20px;
}
</style>
</head>
<body>
     
 

<div class="iframe" name="a" > 
<input type=button class="button1" onClick="location.href='register.jsp'" value='REGISTER'>
<input type=button class="button2" onClick="location.href='b.jsp'"    value='LOGIN'>
</div>


</body>
</html>

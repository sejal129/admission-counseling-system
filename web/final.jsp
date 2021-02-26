
<%-- 
    Document   : final
    Created on : Mar 4, 2020, 11:52:53 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="fin.css">
        <title>JSP Page</title>
       
               <title>Entering details</title>
<style>
body{
	background-image: url("Images/stu.jpg");
	background-size: 100% ;
  	background-repeat: no-repeat;
     
        
    }
</style>
    </head>
    <body>
        <form name="f" method="post">
        <h1>You are Done with the Process!</h1>
        <h2><strong>Key Highlights:-</strong></h2>
        <ol>
            <li> Result will be out soon(About branches).</li><br>
            <li> You will be called for Counseling.</li><br>
            <li> Bring all the necessary documents during Counseling.</li><br>
            <li> Counseling dates will be soon provided to you.</li><br>
            <li> Keep checking your Mails.</li><br>
        </ol><br><br>
           <input type="submit" name="btnprev" value="Go to Home Page" id="butt">
   
</html>
<%
    try{
        
        if(request.getParameter("btnprev")!=null)
        {
            out.println("sdsdsdsds");
            response.sendRedirect("master.jsp");
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>
        </form>
         </body>
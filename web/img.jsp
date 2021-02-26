<%-- 
    Document   : img
    Created on : 22 Feb, 2020, 9:42:45 PM
    Author     : gsimm
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Page</title>
    </head>
    <body>
        <form name = "f1" >
        <table>
            <tr><td>Enter name:</td><td><input type="text" name="name" value="" /></td></tr>
            <tr><td>Upload Image:</td><td><input type="file" name="img" value="" /></td></tr>
            <tr><td><input type="submit" name="Upload" value="Upload" /></td></tr>
        </table>
        </form>
    </body>
</html>
<%
    if(request.getParameter("Upload")!=null)
    {
        String name,pic;
        try{
            name=request.getParameter("name");
            pic=request.getParameter("img");
            Class.forName("com.mysq.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onestopshop?zeroDateTimeBehavior=convertToNull", "root", "");
            File file=new File(pic);
	    FileInputStream fis=new FileInputStream(file);
	    PreparedStatement ps=con.prepareStatement("insert into image (name,pic) values(?,?)"); 
	    ps.setString(1,name);
	    ps.setBinaryStream(2,fis,(int)file.length());
	    int x=ps.executeUpdate();
            if(x>0)
            {
                out.println("Image inserted");
             
            }
	    ps.close();
	    fis.close();
	    con.close();
            
        
    }catch(Exception ex){}
    }
%>
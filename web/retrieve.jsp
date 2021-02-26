<%-- 
    Document   : retrieve
    Created on : 22 Feb, 2020, 10:00:51 PM
    Author     : gsimm
--%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retrieve Page</title>
    </head>
    <form name="f1">
    <body>
       <table>
           <tr><td>Enter name:</td><td><input type="text" name="name" value="" /></td></tr>
           <tr><td><input type="submit" value="Submit" name="Submit" /></td></tr>
       </table>
    </body>
    </form>
</html>
<% if(request.getParameter("Submit")!=null)
    {String name;
    try{
        name=request.getParameter("name");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onestopshop?zeroDateTimeBehavior=convertToNull", "root", "");
			PreparedStatement ps = con.prepareStatement("select * from image where name=?");
                        ps.setString(1, name);
                        ResultSet rs = ps.executeQuery();
 
                        if(rs.next()){
                        Blob blob = rs.getBlob("pic");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                        response.setContentType("image/gif");
                        OutputStream os = response.getOutputStream();
                        os.write(byteArray);
                        os.flush();
                        os.close();
        }
		}catch(Exception e){
			e.printStackTrace();
		}}
%>

<%-- 
    Document   : branch
    Created on : Feb 22, 2020, 9:51:0
5 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss4.css">

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
        <form name="f" method="post">

        <div class="register">
            <h1><strong>Step 5: BRANCH SELECTION</strong></h1><br><br>
            
                <label>Exam Rollno</label><br>
            <input type="number" name="txtrollno" id="rollno" placeholder="Enter your rollno" ><br><br> 
                 <label>Preference 1</label><br>
                <select id="P1" name="Preferences_1" >
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                 <label>Preference 2</label><br>
                <select id="P2" name="Preferences_2">
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                 <label>Preference 3</label><br>
                 <select id="P3" name="Preferences_3" >
                      <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                <label>Preference 4</label><br>
                <select id="P4" name="Preferences_4" >
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                <label>Preference 5</label><br>
                <select id="P5" name="Preferences_5" >
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                <label>Preference 6</label><br>
                <select id="P6" name="Preferences_6" >
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                <label>Preference 7</label><br>
                <select id="P7" name="Preferences_7" >
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                <label>Preference 8</label><br>
                <select id="P8" name="Preferences_8">
                    <option>Choose....</option>
                    <option>Computer Science Engineering</option>
                    <option>Information Technology Engineering</option>
                    <option>Electronics & Communication Engineering</option>
                    <option>Electrical Engineering</option>
                    <option>Mechanical Engineering</option>
                    <option>Chemical Engineering</option>
                    <option>Biotechnology</option>
                    <option>Electronics & Instrumentation Engineering</option>
                </select><br><br>
                
                  
                <input type="submit"  name="btnnext" value="Next" id="butt1">   
                
           
                    
 </div>
 
   

<%      
    try{              
        if(request.getParameter("btnnext")!=null)
        {
             String a,b,c,d,e,f,g,h;
             int roll;
          roll=Integer.parseInt(request.getParameter("txtrollno"));
          a=request.getParameter("Preferences_1");
          b=request.getParameter("Preferences_2");
          c=request.getParameter("Preferences_3");
          d=request.getParameter("Preferences_4");
          e=request.getParameter("Preferences_5");
          f=request.getParameter("Preferences_6");
          g=request.getParameter("Preferences_7");
          h=request.getParameter("Preferences_8");
          if(a.equals(b))
          {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
          }
          
         else if(a.equals(c)||b.equals(c))
          {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
          }
         
          else if(a.equals(d)|| b.equals(d)|| c.equals(d))
          {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
          }
         
        else if(a.equals(e) || b.equals(e)|| c.equals(e) || d.equals(e))
          {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
          }
         
          else if(a.equals(f) || b.equals(f)||c.equals(f)||d.equals(f)||e.equals(f))
          {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
          }
         
        else if(a.equals(g) || b.equals(g)|| c.equals(g)|| d.equals(g)|| e.equals(g)||f.equals(g))
            {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
          }
         
        else if(a.equals(h)|| b.equals(h)|| c.equals(h)|| d.equals(h)|| e.equals(h)|| f.equals(h)|| g.equals(h))
            {%>
              <script>
                  alert("Error! You may have entered same branch preferences.");
              </script>
             <% 
            }
else{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
         Statement stmt1=conn.createStatement();
          Statement stm5=conn.createStatement();
             ResultSet y5=stm5.executeQuery("select examrollno from branch_preferences where examrollno="+roll+"");
             if(y5==null)
            {
               %>
              <script>
                  alert("Sorry! Data is already present on this ID");
              </script>
             <% 
            }
           else{
         int y=stmt1.executeUpdate("insert into branch_preferences(examrollno,p1,p2,p3,p4,p5,p6,p7,p8) values("+roll+",'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')");
         if(y>0)
           {
             Statement stm3=conn.createStatement();
             ResultSet y1=stm3.executeQuery("select selected_students.rank from selected_students,branch_preferences where selected_students.examrollno="+roll+"");
             
            while(y1.next())
             {
                 Statement stm4=conn.createStatement();
                 int y2=stm4.executeUpdate("update branch_preferences set rank="+y1.getInt(1)+" where examrollno="+roll+"");
                 if(y2>0)
                 response.sendRedirect("final.jsp");
             }
           }
            else 
            {
                %>
              <script>
                  alert("Error! Please enter your details carefully");
              </script>
             <% 
            }
        }
}
        
    } 
      
    }


    catch(Exception e)
    {
        %>
              <script>
                  alert("Oops! Something went wrong. Try Again");
              </script>
             <% 
    }
%>  
</form>

</body>
</html>
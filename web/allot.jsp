<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
        <input type="submit" name="butt" value="allot branch">
        </form>
    </body>
</html>
<%
try
{
    if(request.getParameter("butt")!=null)
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Pro","pro","pro");
    Statement stmt=con.createStatement();
    int CS=20,IT=20,EC=10,i,EI=10,rank,ME=10,CE=10,BT=10,EE=10,flag=0;
    String p[]=new String[8];
    for(rank=1;rank<=100;rank++)
    {
    ResultSet rs=stmt.executeQuery("select b.rank from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno and b.rank="+rank+" ");
    while(rs.next())
    {  
               // out.println(rs.getInt(1));
                ResultSet rs1=stmt.executeQuery("select p1,p2,p3,p4,p5,p6,p7,p8 from branch_preferences where rank="+rs.getInt(1)+" ");
                while(rs1.next())
                {
                    p[0]=rs1.getString(1);
                    p[1]=rs1.getString(2);
                    p[2]=rs1.getString(3);
                    p[3]=rs1.getString(4);
                    p[4]=rs1.getString(5);
                    p[5]=rs1.getString(6);
                    p[6]=rs1.getString(7);
                    p[7]=rs1.getString(8);
                }
                for(i=0;i<8;i++)
                {
                    if(p[i].equals("Computer Science Engineering") && CS!=0)
                    {
                        CS--;
                        ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Information Technology Engineering") && IT!=0)
                    {
                        IT--;
                        ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Electronics and Communication Engineering") && EC!=0)
                    {
                        EC--;
                         ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Electrical Engineering") && EE!=0)
                    {
                        EE--;
                         ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Mechanical Engineering") && ME!=0)
                    {
                        ME--;
                        ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Chemical Engineering") && CE!=0)
                    {
                        CE--;
                         ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Biotechnology") && BT!=0)
                    {
                        BT--;
                         ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                    else if(p[i].equals("Electronics & Instrumentation Engineering") && EI!=0)
                    {
                        EI--;
                         ResultSet rs2=stmt.executeQuery("select s.sname,s.examrollno from selected_students2 s,branch_preferences b where s.examrollno=b.examrollno");
                        while(rs2.next())
                        {
                            int z=stmt.executeUpdate("insert into final_table(examrollno,sname,branch_alloted) values("+rs2.getInt(2)+",'"+rs2.getString(1)+"','"+p[i]+"')");
                            if(z>0)
                            {
                                out.println("Record inserted");
                                flag=1;
                                break;
                            }
                        }
                        if(flag==1)
                        {
                            break;
                        }
                    }
                }
                
                break;
            }
}
}
}
catch(Exception e)
{
    out.println(e);
}
    %>

<%@page import="java.io.*, java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>logged</title>
</head>
<body background="1.jpg">
<%
PrintWriter pw=response.getWriter();
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String a1="";
String b1="";
String c1="";
int flag=0;

 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql:///maps","root","Gaurav96");
 Statement stmt1=con.createStatement();
 String str1="SELECT * from user";
 ResultSet rs=stmt1.executeQuery(str1);
 while(rs.next())
 {
     a1=rs.getString(1);
     b1=rs.getString(2);
     c1=rs.getString(3);
     if(a1.equals(name)&&c1.equals(password))
     {
         flag=1;
     }
     if(flag==1)
     {
         RequestDispatcher rd=request.getRequestDispatcher("temp.html");
         pw.println("Successful login");
         rd.include(request,response);
         
     }
     else
      {
          RequestDispatcher rd=request.getRequestDispatcher("log.jsp");
         pw.println("No such user");
         rd.include(request,response);
        
       }      
 }
%>
</body>

</html>

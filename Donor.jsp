<html> 
<body bgcolor="#F5DEB3">
<img src="C:\swarda\Bloodbank\banner.jpg" height="150" Width="1350">
<center><b><font color="#8b0000" size="6" face="Algerian">Sanjeevani BloodBank</font></b></center>
<marquee bgcolor="red" height="25"><b><font color="white" size="4">******* &nbsp; Donate your blood and Make a Difference &nbsp; *******</font></b></marquee>
<%@ page language="java"%> 
<%@ page import="java.sql.*"%>
<%
String Dname = request.getParameter("t1");
String Address= request.getParameter("t2");
String Contactno= request.getParameter("t3");
String Bloodgroup= request.getParameter("t4");
String Emailid= request.getParameter("t5");
String Username= request.getParameter("t6");
String Password= request.getParameter("t7");
// declare a connection by using Connection interface
Connection conn = null;
PreparedStatement pstmt=null;
String query = "insert into donor(Dname,Address,Contactno,Bloodgroup,Emailid,Username,Password) values(?, ?, ? , ? , ? , ? , ? )";
  
          try 
			       {
			          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                            conn=DriverManager.getConnection("jdbc:odbc:swa","",""); 
                            pstmt = conn.prepareStatement(query); // create a statement
			         pstmt.setString(1, Dname); // set input parameter 1
			         pstmt.setString(2, Address); // set input parameter 2
			         pstmt.setString(3,Contactno);
			         pstmt.setString(4, Bloodgroup);
			         pstmt.setString(5, Emailid);
			         pstmt.setString(6, Username);
			         pstmt.setString(7, Password);

			         int i = pstmt.executeUpdate();
		
			         if(i!=0)
                                 {  
			        out.println("<br><br>&nbsp;&nbsp;&nbsp;Donor Succesfully Registered");  
			         }  
			         else
			         {  
			        out.println("failed to insert the data");  
			          }  
			       }  
			       catch (Exception e)
			       {  
			         System.out.println(e); 
                               }
 
      
%>
<center>
<font color="#8b0000" size="6" face="Algerian"><a href="bloodbank.html">Home &nbsp; </a>
<a href="bloodd.html">Blood Donation Camp Details</a></font>
</center>
</body>
</html>

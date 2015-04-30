<html>
<body bgcolor="#F5DEB3">
<img src="C:\swarda\Bloodbank\banner.jpg" height="150" Width="1350">
<center><b><font color="#8b0000" size="6" face="Algerian">Sanjeevani BloodBank</font></b></center>
<marquee bgcolor="red" height="25"><b><font color="white" size="4">******* &nbsp; Donate your blood and Make a Difference &nbsp; *******</font></b></marquee>
<%@ page language="java"%> 
<%@ page import="java.sql.*"%>
<%
String m=null; 
String m1=null; 
String s=request.getParameter("t1"); 
PreparedStatement ps=null;
Connection conn=null; 
ResultSet rs=null; 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
conn=DriverManager.getConnection("jdbc:odbc:swa","",""); 
ps=conn.prepareStatement("select * from bloodbank where bloodtype=?");
ps.setString(1,s);
rs=ps.executeQuery(); 
out.println("<br><br><center>Bloodgroup:"+s); 
while(rs.next()) 
{
m=rs.getString(1); 
m1 =rs.getString("Noofbloodbottles"); 
out.println("<br><br>No Of Bottles :"+m1); 
out.println("</center>"); 
}
conn.close();
%>
<center>
<font color="#8b0000" size="6" face="Algerian"><a href="bloodbank.html">Home</a></font>
</center>
</body>
</html>

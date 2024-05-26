<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<img src="gl.png" alt="" style="width: 300px; height: auto;">

<h2 align="center"><font><strong>Retrieve Data From Gitam Database Using JSP</strong></font></h2>
<table align="center" cellpadding="10" cellspacing="10" border="12">
<tr>

</tr>
<tr bgcolor="#C6FFAB">
<th>First Name</th>
<th>Last Name</th>
<th>Email ID</th>
<th><b>User ID</th>
<th>Password</th>
<th>Mobile No</th>
</tr>
<%
try{ 
String id = request.getParameter("userid");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); 
Statement st=con.createStatement();
String sql ="select * from users";
ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr bgcolor="#E6E6FA">

<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
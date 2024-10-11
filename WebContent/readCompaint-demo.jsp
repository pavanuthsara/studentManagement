<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "mydb9";
	String userId = "root";
	String password = "uthsara29";
	
	try {
	Class.forName(driverName);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<th>ID</th>
<th>Complaint</th>
<th>Status</th>
<th>Update</th>
<th>Delete</th>

</tr>
<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String sql ="SELECT * FROM complaintDemo";
	
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getInt("cid") %></td>
<td><%=resultSet.getString("complaint") %></td>
<td><%=resultSet.getString("status") %></td>
<td><a href="updateComplaint.jsp?cid=<%= resultSet.getInt("cid")%>">Update</a></td>
<td><a href="deleteComplaint.jsp?cid=<%= resultSet.getInt("cid")%>">Delete</a></td>


</tr>
<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
%>
</table>


</body>
</html>
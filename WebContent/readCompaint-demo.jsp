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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
    	<jsp:include page="footerCss.jsp" />
   	</style>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="headerDashboard.jsp" />
<div class="container my-4">
<table class="table table-bordered table-striped">
<thead class="table-light">
<tr>
<th class="text-center">ID</th>
<th class="text-center">Complaint</th>
<th class="text-center">Status</th>
<th class="text-center">Update</th>
<th class="text-center">Delete</th>

</tr>
</thead>
<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String sql ="SELECT * FROM complaintDemo";
	
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
<tr>

<td class="text-center"><%=resultSet.getInt("cid") %></td>
<td class="text-center"><%=resultSet.getString("complaint") %></td>
<td class="text-center"><%=resultSet.getString("status") %></td>
<td class="text-center"><a href="updateComplaint.jsp?cid=<%= resultSet.getInt("cid")%>" class="btn btn-warning btn-sm">Update</a></td>
<td class="text-center"><a href="deleteComplaint?cid=<%= resultSet.getInt("cid")%>" class="btn btn-danger btn-sm">Delete</a></td>


</tr>
<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
%>
</table>
</div>

<!-- Include the footer -->
        <jsp:include page="footer.jsp" />
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ZVzw7OoIetZTAoWcBNURpupfAOt6ZXE7V6FxPHXRx6FhFmbSeLlTzZBY51RzFWjS" crossorigin="anonymous"></script>
</body>
</html>
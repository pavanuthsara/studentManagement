<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.ComplaintDemo" %>
<%
	ArrayList<ComplaintDemo> cd =(ArrayList<ComplaintDemo>) request.getAttribute("cdetails");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
    	<jsp:include page="footerCss.jsp" />
   	</style>
<title>Read Complaints</title>
</head>
<body>
<jsp:include page="headerDashboard.jsp" />
<div class="container my-4">
<h3 class="mb-3">Your complaints</h3>
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
for(ComplaintDemo c : cd){
%>
<tr>

<td class="text-center"><%= c.getCid() %></td>
<td class="text-center"><%= c.getComplain() %></td>
<td class="text-center"><%= c.getStatus() %></td>
<td class="text-center"><a href="updateComplaint.jsp?cid=<%= c.getCid() %>" class="btn btn-warning btn-sm">Update</a></td>
<td class="text-center"><a href="deleteComplaint?cid=<%= c.getCid()%>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this complaint?');">Delete</a></td>


</tr>
<%
}
%>
</table>

</div>

		<!-- Include the footer -->
        <jsp:include page="footer.jsp" />
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ZVzw7OoIetZTAoWcBNURpupfAOt6ZXE7V6FxPHXRx6FhFmbSeLlTzZBY51RzFWjS" crossorigin="anonymous"></script>
</body>
</html>




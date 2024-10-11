<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="Controller.DBConnect"%>
<% 

String cid = request.getParameter("cid"); 
int pcid = Integer.parseInt(cid);
%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<title>Insert title here</title>
	
	<style>
    	<jsp:include page="footerCss.jsp" />
    </style>
    
    
</head>
<body>
<div class="container">
<jsp:include page="headerDashboard.jsp" />

<form id="complaintForm" action="deleteComplaint" method="post">
<input type="hidden" name="cid" value="<%= pcid %>">
<input type="submit" value="confirm delete">
</form>



</div>
<!-- Include the footer -->
<jsp:include page="footer.jsp" />
</body>
</html>
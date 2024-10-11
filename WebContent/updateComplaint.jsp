<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% String cid = request.getParameter("cid"); 
	int pcid = Integer.parseInt(cid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="" method="post">

Complaint ID : <%= pcid %> <br>
Complaint : <input type="text" name="" value=""> <br>

<input type="submit" value="Update complaint">

</form>

</body>
</html>
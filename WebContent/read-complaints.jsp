<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Complaints</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<h1>Read complaints</h1>
<form action="" method="">
	<input type="submit" value="fetch">

</form>
<table>
<tr>
<th>ID</th>
<th>Complaint</th>
<th>Status</th>
</tr>
<c:forEach var="com" items="${cd}">

<tr>
<td><c:out value="${com.id}"/></td>
<td><c:out value="${com.complaint}"/></td>
<td><c:out value="${com.status}"/></td>
</tr>

</c:forEach>

</table>


</body>
</html>
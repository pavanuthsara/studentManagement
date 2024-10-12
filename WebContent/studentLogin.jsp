<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>studentLogin.jsp</title>
</head>
<body>

<div class=container>
<h3>Student Login</h3>
	<form action="stdLoginServlet" method="post">
		<label>Student ID</label>
		<input type="text" name="sid">
		
		<label>Password</label>
		<input type="password" name="password">
		
		<input type="submit" value="Log In">
	</form>
</div>

</body>
</html>
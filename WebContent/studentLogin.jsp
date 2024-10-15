<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<	meta charset="ISO-8859-1">
	<title>studentLogin.jsp</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    	
	<style>
    	<jsp:include page="footerCss.jsp" />
   	</style>
</head>

<body bg-light>
		<jsp:include page="header.jsp" />
		
		
		<div class="container min-vh-80 d-flex justify-content-center align-items-center ">
			<div class="col-6">
				<h3 class="mb-3">Student Login</h3>
				<form action="stdLoginServlet" method="post" class="border p-4 rounded">
				<div class="form-group mb-4">
					<label class="mb-2">Student ID</label>
					<input type="text" name="sid" class="form-control" placeholder="Enter Student Id">
				</div>
					
				<div class="form-group mb-4">	
					<label class="mb-2">Password</label>
					<input type="password" name="password" class="form-control" placeholder="Enter password">
				</div>
			
				<input type="submit" value="Log In" class="btn btn-primary">
			
				</form>
			</div>
		</div>

	 	<script>
	        // Get the URL parameters
	        const urlParams = new URLSearchParams(window.location.search);
	        const message = urlParams.get('message');
	        
	        // If there is a message, display it in an alert box
	        if (message) {
	            alert(decodeURIComponent(message));
	        }
	    </script>

		<!-- Include the footer -->
        <jsp:include page="footer.jsp" />
</body>
</html>
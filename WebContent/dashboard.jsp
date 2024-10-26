<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
   int sid =(Integer) session.getAttribute("sid");
   String name =(String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Student Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    	<style>
    	<jsp:include page="footerCss.jsp" />
    	
    	body {
		    background-image: url('img/schoolbg2.webp');
		    background-size: cover;
		    background-position: center;
		    background-repeat: no-repeat;
		}
    	</style>
    </head>
    <body>
    <jsp:include page="headerDashboard.jsp" />
        <div class="container">
            <h1 class="text-center my-4 text-white">Student dashboard : <%= name %></h1>
            
            <div class="d-flex justify-content-center gap-3">
            <a href="insert-complaint.jsp" class="btn btn-primary my-2">Add complaint</a> <br>
            <a href="ReadComplaints?sid=<%= sid %>" class="btn btn-warning my-2">Your complaints</a> 
                
            </div>
        </div>
        
      <!-- Include the footer -->
        <jsp:include page="footer.jsp" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ZVzw7OoIetZTAoWcBNURpupfAOt6ZXE7V6FxPHXRx6FhFmbSeLlTzZBY51RzFWjS" crossorigin="anonymous"></script>
     </body>
</html>
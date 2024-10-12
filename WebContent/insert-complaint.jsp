<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Complaint </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <style>
    <jsp:include page="footerCss.jsp" />
    </style>
    
     <script>
        function validateForm() {
            var complaint = document.getElementById("large-text").value.trim();
            
            if (complaint === "") {
                alert("Please fill out the complaint field.");
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</head>
<body>
	<jsp:include page="headerDashboard.jsp" />
	
	<div class="container">
    <div class="header text-center mb-4">
        <br><h3>Add complaint here</h3>
	
    <div class="form-container">
        <form action="ComplaintServlet" method="post" id="complaintForm" onsubmit="return validateForm();">
            <div class="mb-3">
	            <label class="form-label">Complaint </label>
	            <textarea id="large-text" name="complaint" rows="10" cols="50" ></textarea><br>
            </div>
            <input type="hidden" name="status" value="pending">

            <input type="submit" name="submit" value="Submit Complaint" class="btn btn-primary">
        </form>
    </div>
    </div>
	</div>
    <jsp:include page="footer.jsp" />
    

</body>
</html>

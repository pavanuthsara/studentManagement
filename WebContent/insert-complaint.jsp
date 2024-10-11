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
</head>
<body>
	<jsp:include page="headerDashboard.jsp" />
	
	<div class="container">
    <div class="header text-center mb-4">
        <h1>Add complaint here</h1>
    </div>

    <div class="form-container">
        <form action="ComplaintServlet" method="post">
            <div class="mb-3">
	            <label class="form-label">Complaint </label>
	            <input type="text" name="complaint" required style="margin:5px;"> <br>
            </div>
            <input type="hidden" name="status" value="pending">
          <!--    <input type="hidden" id="dateField" name="date"> -->

            <input type="submit" name="submit" value="Submit Complaint" class="btn btn-primary w-100">
        </form>
    </div>
	</div>
    <jsp:include page="footer.jsp" />
    
    <script>
	    // Get today's date
	    const today = new Date().toISOString().split('T')[0]; // Format as YYYY-MM-DD
	    
	    // Set the value of the hidden input field
	    document.getElementById('dateField').value = today;
	</script>	

</body>
</html>

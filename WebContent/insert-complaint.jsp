<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Complaint </title>
    <style>
    input{
    	margin:5px;
    }
    </style>
</head>
<body>

    <div class="header">
        <h1>Add complaint here</h1>
    </div>

    <div class="form-container">
        <form action="ComplaintServlet" method="post">
           <!-- <label>Complaint ID:</label>
            <input type="number" name="cid" required> <br>

            <label>SID </label>
            <input type="number" name="sid" required> <br>  --> 
            
            <label>Complaint </label>
            <input type="text" name="complaint" required> <br>
            
            <input type="hidden" name="status" value="pending">
          <!--    <input type="hidden" id="dateField" name="date"> -->

            <input type="submit" name="submit" value="Submit Complaint">
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 School Information Management System | All Rights Reserved</p>
    </div>
    
    <script>
	    // Get today's date
	    const today = new Date().toISOString().split('T')[0]; // Format as YYYY-MM-DD
	    
	    // Set the value of the hidden input field
	    document.getElementById('dateField').value = today;
	</script>	

</body>
</html>

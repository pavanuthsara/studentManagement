<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
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
<body class="bg-light">
    <!-- Include the header -->
    <jsp:include page="header.jsp" />

    <div class="container">
        <!-- Hero section -->
        <div class="p-5 mb-4  rounded-3 mt-4 text-white ">
            <div class="container-fluid py-4 ">
                <h1 class="display-5 fw-bold">Welcome to the School Information Management System</h1>
                <p class="col-md-8 fs-4">Easily manage all aspects of your school's information, from student records to teacher schedules, and more. Streamline your school's operations efficiently.</p>
                <a href="studentLogin.jsp" class="btn btn-primary btn-lg">Log In</a>
            </div>
        </div>

        <!-- Features section -->
        <div class="row text-center mt-5 ">
            <div class="col-lg-4 mb-4">
                <div class="card shadow-sm">
                    <div class="card-body bg-info">
                        <h3 class="card-title">Student Management</h3>
                        <p class="card-text">Manage student data, attendance, grades, and communication with ease.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card shadow-sm">
                    <div class="card-body bg-warning">
                        <h3 class="card-title">Teacher Management</h3>
                        <p class="card-text">Keep track of teachers' performance, schedules, and feedback.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card shadow-sm">
                    <div class="card-body bg-info">
                        <h3 class="card-title">Classroom Resources</h3>
                        <p class="card-text">Organize classroom materials, assignments, and shared resources effectively.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include the footer -->
    <jsp:include page="footer.jsp" />

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-QuXUHrGFJMGcnGyA5b1vBdyaAS/+4CLyuzHkPAasISqsrzI5u9ZHmNKRhXjVe1wl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-oBqDVmMz4fnFO9gyb4LgE8vf2yrQjWljSAe8l+1xLioarSWv43VT2s3sFdp6FcSs" crossorigin="anonymous"></script>
</body>
</html>

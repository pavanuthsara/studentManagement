<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.DBConnect"%>
<% 

String cid = request.getParameter("cid"); 
int pcid = Integer.parseInt(cid);

String complaintText = "";

try{
	
	String sqlQuery = "select * from complaintDemo where cid=?;";
	
	DBConnect dbConnect = DBConnect.getInstance();
	Connection con = dbConnect.getConnection();
	PreparedStatement ps = con.prepareStatement(sqlQuery);
	
	ps.setInt(1, pcid);
	ResultSet rs = ps.executeQuery();
	
	if(rs.next()){
		complaintText = rs.getString("complaint");
	} else {
		complaintText = "Error fetching complaint details";
	}
	ps.close();
} catch(Exception e){
	e.printStackTrace();
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
    	<jsp:include page="footerCss.jsp" />
   	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="headerDashboard.jsp" />
	<div class="container min-vh-80 d-flex justify-content-center align-items-center">
		<div class="col-6">
			<h3 class="mb-3"><u>Update your complaint</u></h3>
			<form action="UpdateComplaint" method="post" id="complaintForm">
				<div class="form-group mb-4">
				Complaint ID : <%= pcid %> <input type="hidden" class="form-control mt-2" name="cid" value="<%= pcid %>"><br>
				</div>
				
				<div class="form-group mb-3">
				Complaint : <input type="text" name="complaint" class="form-control mt-2" value="<%= complaintText %>"> <br>
				</div>
				
				<input type="submit" value="Update complaint" class="btn btn-warning">

			</form>
		</div>
	</div>
 <!-- Include the footer -->
        <jsp:include page="footer.jsp" />
</body>
</html>
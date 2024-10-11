<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.DBConnect"%>
<% 

String cid = request.getParameter("cid"); 
int pcid = Integer.parseInt(cid);

String complaintText = "";

try{
	DBConnect dbc = new DBConnect();
	
	String sqlQuery = "select * from complaintDemo where cid=?;";
	PreparedStatement ps = DBConnect.getConnection().prepareStatement(sqlQuery);
	
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
<title>Insert title here</title>
</head>
<body>

<form action="UpdateComplaint" method="post">

Complaint ID : <%= pcid %> <input type="hidden" name="cid" value="<%= pcid %>"><br>
Complaint : <input type="text" name="complaint" value="<%= complaintText %>"> <br>

<input type="submit" value="Update complaint">

</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="Controller.DBConnect"%>
<% 

String cid = request.getParameter("cid"); 
int pcid = Integer.parseInt(cid);

String message = "";

try{
	DBConnect dbc = new DBConnect();
	
	String sqlQuery = "delete from complaintDemo where cid=?;";
	PreparedStatement ps = DBConnect.getConnection().prepareStatement(sqlQuery);
	
	ps.setInt(1, pcid);
	int result = ps.executeUpdate();
	
	if(result > 0){
		message = "deleted successfully";
	} else {
		message = "deletion unsuccessfully";
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
<title>Insert title here</title>
</head>
<body>

<%= message %>

</body>
</html>
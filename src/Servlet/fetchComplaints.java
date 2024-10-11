package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.DBConnect;
import Model.ComplaintDemo;
import Services.cServiceDemo;

@WebServlet("/fetchComplaints")
public class fetchComplaints extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public fetchComplaints() {
        super();
    }


//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		
//		try {
//			DBConnect dbc = new DBConnect();
//			dbc.getConnection();
//			
//			String sql = "select * from complaintDemo;";
//			Statement stmt = dbc.getConnection().createStatement();
//			ResultSet rs = stmt.executeQuery(sql);
//			
//			ArrayList<ComplaintDemo> c1 = new ArrayList<>();
//			
//			out.println("<table>");
//			while(rs.next()) {
//				c1.add(new ComplaintDemo(rs.getInt("cid"),rs.getString("complaint") , rs.getString("status")));
//				out.println("<tr>");
//				out.println("<td>" + rs.getInt("cid") + "</td>");
//				out.println("<td>" + rs.getString("complaint") + "</td>");
//				out.println("<td>" + rs.getString("status") + "</td>");
//				out.println("</tr>");
//			}
//			out.println("</table>");
//			stmt.close();
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ComplaintDemo> cd = new ArrayList<>();
		
		cServiceDemo csd = new cServiceDemo();
		cd = csd.fetchData();
//		for(ComplaintDemo c : cd) {
//			System.out.println(c.getCid());
//			System.out.println(c.getComplain());
//			System.out.println(c.getStatus());
//			System.out.println();
//		}
		request.setAttribute("cd", cd);
		
		RequestDispatcher dis = request.getRequestDispatcher("read-complaints.jsp");
		dis.forward(request, response);
	}

}

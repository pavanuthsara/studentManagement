package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ComplaintDemo;
import Services.cServiceDemo;

@WebServlet("/ComplaintServlet")
public class ComplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ComplaintServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ComplaintDemo cmp = new ComplaintDemo();
		cmp.setComplain(request.getParameter("complaint"));
		cmp.setStatus(request.getParameter("status"));
		
		cServiceDemo csd = new cServiceDemo();
		csd.insertData(cmp);
		response.sendRedirect("insert-complaint.jsp");
	}

}

package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.ComplaintDemo;
import Services.cServiceDemo;

@WebServlet("/ComplaintServlet")
public class ComplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ComplaintServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int sid =(Integer) session.getAttribute("sid");
		
		ComplaintDemo cmp = new ComplaintDemo();
		cmp.setComplain(request.getParameter("complaint"));
		cmp.setStatus(request.getParameter("status"));
		cmp.setSid(sid);
		
		cServiceDemo csd = new cServiceDemo();
		csd.insertData(cmp);
		
		int x =(Integer) session.getAttribute("sid");
		System.out.println("x value for delete servlet = " + x);
		
		response.sendRedirect("ReadComplaints?sid=" + x);
	}

}

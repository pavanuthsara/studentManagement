package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Services.cServiceDemo;

@WebServlet("/deleteComplaint")
public class deleteComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public deleteComplaint() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	int cid = Integer.parseInt(request.getParameter("cid"));
    	cServiceDemo csd = new cServiceDemo();
		String resultMsg = csd.deleteData(cid);
		System.out.println(resultMsg);
		
		HttpSession session = request.getSession();
		int x =(Integer) session.getAttribute("sid");
		System.out.println("x value = " + x);
		
		response.sendRedirect("ReadComplaints?sid=" + x);
    }

}

package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ComplaintDemo;
import Services.cServiceDemo;

@WebServlet("/ReadComplaints")
public class ReadComplaints extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ReadComplaints() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		System.out.println("ReadComplaint servlet sid = " + sid);
		
		cServiceDemo csd = new cServiceDemo();
		ArrayList<ComplaintDemo> cd = new ArrayList<>();
		cd = csd.readComplaints(sid);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.StudentDemo;
import Services.cServiceDemo;

@WebServlet("/stdLoginServlet")
public class stdLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public stdLoginServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sid = Integer.parseInt(request.getParameter("sid"));
		String password = request.getParameter("password");
		
		cServiceDemo csd = new cServiceDemo();
		
		StudentDemo sd = null;
		sd = csd.checkLogIn(sid, password);
		
		if(sd.getSid()>0) {
			HttpSession session = request.getSession();
			session.setAttribute("sid", sid);
			session.setAttribute("name", sd.getName());
			response.sendRedirect("dashboard.jsp");
		}else {
			System.out.println("Error with setting session!");
		}
		
		
		
	}

}

package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/stdLogoutServlet")
public class stdLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public stdLogoutServlet() {
        super();
       
    }
    
    //log out from webapp
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); // Invalidates the session
        }
        response.sendRedirect("studentLogin.jsp"); // Redirect to login page
	}

	

}

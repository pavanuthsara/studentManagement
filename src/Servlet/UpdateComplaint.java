package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ComplaintDemo;
import Services.cServiceDemo;


@WebServlet("/UpdateComplaint")
public class UpdateComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateComplaint() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ComplaintDemo cmp = new ComplaintDemo();
		cmp.setComplain(request.getParameter("complaint"));
		cmp.setCid(Integer.parseInt(request.getParameter("cid")));
		cmp.setStatus("pending");
		
		cServiceDemo csd = new cServiceDemo();
		csd.updateData(cmp);
		response.sendRedirect("readCompaint-demo.jsp");
	}

}

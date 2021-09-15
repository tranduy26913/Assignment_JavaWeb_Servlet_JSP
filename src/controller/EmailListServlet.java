package controller;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/home.jsp";
		String action=request.getParameter("action");
		if (action==null) {
			action="join";
		}
		if (action.equals("join")) {
			url="/home.jsp";
		}
		else
			if (action.equals("add")) {
				String Email=request.getParameter("email");
				String FirstName=request.getParameter("firstName");
				String LastName=request.getParameter("lastName");
				User User=new User(FirstName,LastName,Email);
				request.setAttribute("user", User);
				url="/Assignment1/thanks.jsp";
			}
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	
	
}

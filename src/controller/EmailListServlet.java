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
		String url="/EmailList/EmailList.jsp";
		String action=request.getParameter("action");
		if (action==null) {
			action="join";
		}
		if (action.equals("join")) {
			url="/EmailList/EmailList.jsp";
		}
		else
			if (action.equals("add")) {
				String Email=request.getParameter("email");
				String FirstName=request.getParameter("firstName");
				String LastName=request.getParameter("lastName");
				User User=new User(FirstName,LastName,Email);
				String message="";
				if(Email==null || Email.isEmpty() || FirstName==null ||FirstName.isEmpty()
						||LastName==null ||LastName.isEmpty()){
					message="Vui lòng điền đầy đủ vào các trường thông tin!";
					url="/EmailList/EmailList.jsp";
				}
				else {
					message="";
					url="/EmailList/thanks.jsp";
				}
				request.setAttribute("user", User);
				request.setAttribute("message", message);
			}
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	
	
}

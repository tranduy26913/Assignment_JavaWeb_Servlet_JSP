package controller;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.ChannelSender;
import org.apache.jasper.tagplugins.jstl.core.If;

import com.mongodb.client.model.Filters;

import model.Model;
import model.User;


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
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
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
				User user=new User(FirstName,LastName,Email);
				String message="";
				if(Email==null || Email.isEmpty() || FirstName==null ||FirstName.isEmpty()
						||LastName==null ||LastName.isEmpty()){
					message="Vui lòng điền đầy đủ vào các trường thông tin!";
					url="/EmailList/EmailList.jsp";
				}
				else {
					
					if (User.CheckUserAlready(Email)){
						message="Email đã tồn tại trong hệ thống. Vui lòng sử dụng email khác";
						url="/EmailList/EmailList.jsp";
						
					}
					else {
						message="Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi!";
						user.Insert();
						url="/EmailList/thanks.jsp";
					}
				}
				
				request.setAttribute("user", user);
				request.setAttribute("message", message);
			}
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	
	
}

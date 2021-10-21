package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

/**
 * Servlet implementation class UserAdminController
 */
@WebServlet("/userAdmin")
public class UserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserAdminController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();

		String url = "/UserAdmin/user_admin.jsp";

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "display_users"; // default action
		}

		// perform action and set URL to appropriate page
		if (action.equals("display_user")) {
			String email = request.getParameter("email");
			User user = User.GetUserByEmail(email);
			session.setAttribute("user", user);
			url = "/UserAdmin/user.jsp";
		} else {
			if (action.equals("update_user")) {
				// get parameters from the request
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");

				// get and update user
				User user = (User) session.getAttribute("user");
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.Update();

			} else if (action.equals("delete_user")) {
				// get the user
				String email = request.getParameter("email");
				User user = User.GetUserByEmail(email);

				// delte the user
				User.Delete(email);

				
			}
			// get and set updated users
			ArrayList<User> users = User.GetAllUser();
			request.setAttribute("users", users);
		}

		getServletContext().getRequestDispatcher(url).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

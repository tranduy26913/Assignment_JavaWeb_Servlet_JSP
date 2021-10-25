package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import util.*;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mongodb.client.FindIterable;
import com.mongodb.client.model.Filters;

import model.Model;
import model.Music;
import model.Product;
import model.User;


/**
 * Servlet implementation class downloadController
 */
@WebServlet("/download")
public class DownloadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // get current action
		
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("viewAlbums")) {
            url = "/Download/listDownload.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        } else if (action.equals("viewCookies")) {
            url = "/Download/view_cookies.jsp";
        } else if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String action = request.getParameter("action");
        
        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
	}
	
	private String checkUser(HttpServletRequest request,
            HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        Product product=Model.PRODUCT.find(Filters.eq("productCode",productCode)).first();
        
        session.setAttribute("product", product);
        User user = (User) session.getAttribute("user");

        
		ArrayList<Music> listSongs = Music.GetMusicByProductCode(productCode);
		session.setAttribute("songs", listSongs);
        String url="/";
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = 
                CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/Download/register.jsp";
            } 
            // if cookie exists, create User object and go to Downloads page
            else {
                user= User.getUserByEmail(emailAddress);
                session.setAttribute("user", user);
                url = "/Download/download.jsp";
            }
        } 
        // if User object exists, go to Downloads page
        else {
            url = "/Download/download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
            HttpServletResponse response) {

         // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        String message="";
        
        if(email.trim().isEmpty() ||firstName.trim().isEmpty() ||lastName.trim().isEmpty()) {
        	message="Vui lòng điền đầy đủ thông tin";
        	request.setAttribute("message", message);
        	return "/Download/register.jsp";
        	
        }
        User user=User.getUserByEmail(email);
        
        if(user!=null)// nếu không tìm thấy tài khoảng thì tạo mới để đăng ký
        {
        	user = new User();
        	user.setEmail(email);
        	user.setFirstName(firstName);
        	user.setLastName(lastName);
        	user.Insert();
        }

        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email to browser
        Cookie c = new Cookie("userEmail", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 2 years
        c.setPath("/");                      // allow entire app to access it
        response.addCookie(c);
        

        // create and return a URL for the appropriate Download page
        Product product = (Product) session.getAttribute("product");
        
        
		ArrayList<Music> listSongs = Music.GetMusicByProductCode(product.getProductCode());
		
		session.setAttribute("songs", listSongs);
        String url = "/Download/download.jsp";
        return url;
   }

    private String deleteCookies(HttpServletRequest request,
            HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/Download/delete_cookies.jsp";
        return url;
    }

}

package cmc.com.vn.controller.function;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cmc.com.vn.dao.UserDao;
import cmc.com.vn.model.User;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher requestDispatcher;
		if (session.getAttribute("username") != null) {
			System.out.println((String) session.getAttribute("username"));
			requestDispatcher = request
					.getRequestDispatcher("/admin/index.jsp");
			requestDispatcher.forward(request, response);
		}
		
		String userName = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		UserDao userDao = new UserDao();
		try {
			if (userDao.isLoginSuccess(userName, password)) {
				User user = userDao.Login(userName, password);
				if (user.getAccess() == 1) {
					session.setAttribute("user", user);
					requestDispatcher = request
							.getRequestDispatcher("/admin/index.jsp");
					requestDispatcher.forward(request, response);
				} else {
					session.setAttribute("user", user);

					requestDispatcher = request
							.getRequestDispatcher("/index.jsp");
					requestDispatcher.forward(request, response);
				}
			} else {
				String error = "UserName or Password is wrong!!";
				request.setAttribute("error-login", error);
				requestDispatcher = request.getRequestDispatcher("/login.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}

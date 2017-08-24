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
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    final String username = request.getParameter("username");
    final String password = request.getParameter("password");
    UserDao userDao = new UserDao();
    try {
      if (userDao.isLoginSuccess(username, password)) {
        User user = userDao.Login(username, password);
        if (user.getAccess() == 1) {
          HttpSession session = request.getSession();
          session.setAttribute("username", username);
          session.setAttribute("email", user.getEmail());
          session.setAttribute("phone", user.getPhone());
          session.setAttribute("access", user.getAccess());
          RequestDispatcher requestDispatcher = request
              .getRequestDispatcher("admin/index.jsp");
          requestDispatcher.forward(request, response);
        } else {
          if (user.getAccess() == 2) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("email", user.getEmail());
            session.setAttribute("phone", user.getPhone());
            session.setAttribute("access", user.getAccess());
            RequestDispatcher requestDispatcher = request
                .getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
          }
        }
      }else {
        String error = "Username or Password is wrong!";
        request.setAttribute("error", error);
        RequestDispatcher requestDispatcher = request
            .getRequestDispatcher("login.jsp");
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

package cmc.com.vn.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmc.com.vn.dao.CategoryDao;
import cmc.com.vn.dao.ProductDao;
import cmc.com.vn.model.Category;
import cmc.com.vn.model.Product;

/**
 * Servlet implementation class CategoryServlet
 */
public class CategoryServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public CategoryServlet() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * @see Servlet#init(ServletConfig)
   */
  public void init(ServletConfig config) throws ServletException {
    // TODO Auto-generated method stub
  }

  /**
   * @see Servlet#destroy()
   */
  public void destroy() {
    // TODO Auto-generated method stub
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    int id = Integer.valueOf(request.getParameter("CategoryId"));
    CategoryDao categoryDao = new CategoryDao();
    ProductDao productDao = new ProductDao();
    try {
      List<Product> listProduct = productDao.getProductByCategoryId(id);
      Category category = categoryDao.getCategoryById(id);
      request.setAttribute("products", listProduct);
      request.setAttribute("category", category);
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    request.getRequestDispatcher("/productcategories.jsp").forward(request, response);
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    // TODO Auto-generated method stub
  }

}

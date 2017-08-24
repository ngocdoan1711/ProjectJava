package cmc.com.vn.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmc.com.vn.dao.CategoryDao;
import cmc.com.vn.dao.ProductDao;
import cmc.com.vn.model.Category;
import cmc.com.vn.model.Product;

/**
 * Servlet implementation class ProductServlet
 */
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final int id; 
		id = Integer.valueOf( request.getParameter("ProductId"));
		ProductDao productDao = new ProductDao();
		CategoryDao categoryDao = new CategoryDao();
		try {
      Product product = productDao.getProductById(id);
      Category category = categoryDao.getCategoryByProductId(id);
      request.setAttribute("product", product);
      request.setAttribute("category", category);
      RequestDispatcher dispatcher;
      dispatcher = request.getRequestDispatcher("detailproduct.jsp");
      dispatcher.forward(request, response);
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

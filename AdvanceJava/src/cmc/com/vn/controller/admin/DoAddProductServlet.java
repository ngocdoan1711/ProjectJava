package cmc.com.vn.controller.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmc.com.vn.dao.ProductDao;
import cmc.com.vn.model.Product;

/**
 * Servlet implementation class DoAddProductServlet
 */
public class DoAddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoAddProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<Product> list = new ArrayList<Product>();
		ProductDao productDao = new ProductDao();
		Product product = new Product();
		String productName = request.getParameter("productName");
		int categoryId = Integer.valueOf(request.getParameter("categoryId"));
		float price = Float.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String image = request.getParameter("image");
		
		product.setProductName(productName);
		product.setCaterogyId(categoryId);
		product.setPrice(price);
		product.setDescription(description);
		product.setImage(image);

		try {
			productDao.insertProduct(product);
			list = productDao.getAllProduct();
			request.setAttribute("product", list);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String success = "Add Product Success!";
		request.setAttribute("success", success);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin/product.jsp");
		requestDispatcher.forward(request, response);
	}

}

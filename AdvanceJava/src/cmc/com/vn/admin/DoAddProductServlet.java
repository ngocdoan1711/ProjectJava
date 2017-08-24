package cmc.com.vn.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmc.com.vn.dao.ProductDao;
import cmc.com.vn.model.Product;
import cmc.com.vn.ultil.ConnectDb;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDao productDao = new ProductDao();
		Product product = new Product();
		String productName = (String) request.getAttribute("productname");
		int categoryId = Integer.valueOf((String)request.getAttribute("categoryId"));
		float price = Float.valueOf((String)request.getAttribute("price"));
		String description = (String) request.getAttribute("description");
		String image = (String) request.getAttribute("image");
		
		product.setProductName(productName);
		product.setCaterogyId(categoryId);
		product.setPrice(price);
		product.setDescription(description);
		product.setImage(image);
		
		try {
			productDao.insertProduct(product);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String url = request.getContextPath()+"/AddProduct";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
	}

}

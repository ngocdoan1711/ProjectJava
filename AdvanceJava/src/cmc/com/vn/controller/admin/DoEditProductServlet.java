package cmc.com.vn.controller.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmc.com.vn.dao.ProductDao;
import cmc.com.vn.model.Product;

/**
 * Servlet implementation class DoEditProductServlet
 */
public class DoEditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoEditProductServlet() {
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<Product> list = new ArrayList<Product>();
		ProductDao productDao = new ProductDao();
		Product product = new Product();
		int productId = Integer.valueOf(request.getParameter("productId"));
		product.setProductName(request.getParameter("productName"));
		product.setCaterogyId(Integer.valueOf(request.getParameter("categoryId")));
		product.setPrice(Float.valueOf(request.getParameter("price")));
		product.setDescription(request.getParameter("description"));
		product.setImage(request.getParameter("image"));
		System.out.println(product.getCaterogyId());
		try {
			productDao.editProduct(productId, product);
			list = productDao.getAllProduct();
			request.setAttribute("product", list);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String success = "Edit Product Success!";
		request.setAttribute("success", success);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin/product.jsp");
		requestDispatcher.forward(request, response);
	}

}

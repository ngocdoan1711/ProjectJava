package cmc.com.vn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cmc.com.vn.model.Product;
import cmc.com.vn.ultil.ConnectDb;

public class ProductDao {
	/**
	 * 
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	private static final String SELECT_ALL_QUERY = "SELECT * FROM dbo.Product";
	private static final String SELECT_BY_CATEGORYID_QUERY = "SELECT * FROM dbo.Product WHERE CategoryId = ?";
	private static final String SELECT_BY_PRODUCTID_QUERY = "SELECT * FROM dbo.Product WHERE ProductId = ?";
	private static final String INSERT_QUERY = "INSERT INTO dbo.Product VALUES(?,?,?,?,?)";
	private static final String UPDATE_QUERY = "UPDATE Product SET ProductName = ?, CategoryId= ?,Price = ?,[Description]= ?,[Image] = ? WHERE ProductId = ?";
	private static final String DELETE_QUERY = "DELETE FROM dbo.Product WHERE ProductId = ?";

	public List<Product> getAllProduct() throws SQLException, ClassNotFoundException {
		List<Product> list = new ArrayList<Product>();
		Connection connection = ConnectDb.connect();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(SELECT_ALL_QUERY);
		while (resultSet.next()) {
			Product product = new Product();
			product.setProductId(resultSet.getInt(1));
			product.setProductName(resultSet.getString(2));
			product.setCaterogyId(resultSet.getInt(3));
			product.setPrice(resultSet.getFloat(4));
			product.setDescription(resultSet.getString(5));
			product.setImage(resultSet.getString(6));
			list.add(product);
		}
		return list;
	}

	public List<Product> getProductByCategoryId(int id) throws ClassNotFoundException, SQLException {
		List<Product> listProduct = new ArrayList<Product>();
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_CATEGORYID_QUERY);
		preparedStatement.setInt(1, id);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			Product product = new Product();
			product.setProductId(resultSet.getInt(1));
			product.setProductName(resultSet.getString(2));
			product.setCaterogyId(resultSet.getInt(3));
			product.setPrice(resultSet.getFloat(4));
			product.setDescription(resultSet.getString(5));
			product.setImage(resultSet.getString(6));
			listProduct.add(product);
		}
		return listProduct;
	}

	public Product getProductById(int id) throws SQLException, ClassNotFoundException {
		Product product = new Product();
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_PRODUCTID_QUERY);
		preparedStatement.setInt(1, id);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			product.setProductId(resultSet.getInt(1));
			product.setProductName(resultSet.getString(2));
			product.setCaterogyId(resultSet.getInt(3));
			product.setPrice(resultSet.getFloat(4));
			product.setDescription(resultSet.getString(5));
			product.setImage(resultSet.getString(6));
			break;
		}
		connection.close();
		return product;
	}

	public boolean insertProduct(Product product) throws SQLException, ClassNotFoundException {
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY);
		preparedStatement.setString(1, product.getProductName());
		preparedStatement.setInt(2, product.getCaterogyId());
		preparedStatement.setFloat(3, product.getPrice());
		preparedStatement.setString(4, product.getDescription());
		preparedStatement.setString(5, product.getImage());

		boolean check = preparedStatement.executeUpdate() > 0;
		return check;
	}

	public boolean editProduct(int productId, Product product) throws SQLException, ClassNotFoundException {
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_QUERY);
		preparedStatement.setString(1, product.getProductName());
		preparedStatement.setInt(2, product.getCaterogyId());
		preparedStatement.setFloat(3, product.getPrice());
		preparedStatement.setString(4, product.getDescription());
		preparedStatement.setString(5, product.getImage());
		preparedStatement.setInt(6, productId);

		boolean check = preparedStatement.executeUpdate() > 0;
		return check;
	}
	
	public boolean deleteProduct(int productId) throws SQLException, ClassNotFoundException{
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(DELETE_QUERY);
		preparedStatement.setInt(1, productId);
		
		boolean check = preparedStatement.executeUpdate() > 0;
		return check;
	}
}

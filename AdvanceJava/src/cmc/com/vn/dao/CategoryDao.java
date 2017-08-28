package cmc.com.vn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cmc.com.vn.model.Category;
import cmc.com.vn.ultil.ConnectDb;

public class CategoryDao {
	private static final String SELECT_ALL_QUERY = "SELECT * FROM dbo.[Category]";
	private static final String SELECT_BY_ID = "SELECT * FROM dbo.Category WHERE CategoryId = ?";
	private static final String SELECT_BY_PRODUCT_ID = "SELECT * FROM dbo.Category WHERE CategoryId IN (SELECT CategoryId FROM dbo.Product WHERE ProductId = ?)";
	private static final String INSERT_QUERY = "INSERT INTO dbo.Category VALUES(?)";
	private static final String UPDATE_QUERY = "UPDATE dbo.Category SET CategoryName = ? WHERE CategoryId = ?";
	private static final String DELETE_QUERY= "DELETE dbo.Category WHERE CategoryId = ?";
	
  public List<Category> getAllCategories() throws ClassNotFoundException,
      SQLException {
    List<Category> list = new ArrayList<Category>();
    Connection connectDB = ConnectDb.connect();
    Statement statement = connectDB.createStatement();
    ResultSet resul = statement.executeQuery(SELECT_ALL_QUERY);
    while (resul.next()) {
      Category category = new Category();
      category.setCategoryId(resul.getInt(1));
      category.setCategoryName(resul.getString(2));
      list.add(category);
    }
    return list;
  }

  public Category getCategoryById(int id) throws ClassNotFoundException,
      SQLException {
    Category category = new Category();
    Connection connection = ConnectDb.connect();
    PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);
    preparedStatement.setInt(1,	id);
    ResultSet resultSet = preparedStatement.executeQuery();
    while (resultSet.next()) {
      category.setCategoryId(resultSet.getInt(1));
      category.setCategoryName(resultSet.getString(2));
      break;
    }
    return category;
  }

  public Category getCategoryByProductId(int id) throws ClassNotFoundException,
      SQLException {
    Category category = new Category();
    Connection connection = ConnectDb.connect();
    PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_PRODUCT_ID);
    preparedStatement.setInt(1, id);
    ResultSet resultSet = preparedStatement.executeQuery();
    while (resultSet.next()) {
      category.setCategoryId(resultSet.getInt(1));
      category.setCategoryName(resultSet.getString(2));
      break;
    }
    return category;
  }
  public boolean insertCategory(Category category) throws ClassNotFoundException,SQLException{
	  Connection connection= ConnectDb.connect();
	  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY);
	  preparedStatement.setString(1, category.getCategoryName());
	  
	  boolean check = preparedStatement.executeUpdate() > 0;
	  return check;
  }
  public boolean editCategory(int id,Category category) throws ClassNotFoundException,SQLException{
	  Connection connection= ConnectDb.connect();
	  PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_QUERY);
	  preparedStatement.setString(1, category.getCategoryName());
	  preparedStatement.setInt(2, id);
	  
	  boolean check = preparedStatement.executeUpdate() > 0;
	  return check;
  }
  public boolean deleteCategory(int id) throws ClassNotFoundException, SQLException{
	  Connection connection= ConnectDb.connect();
	  PreparedStatement preparedStatement = connection.prepareStatement(DELETE_QUERY);
	  preparedStatement.setInt(1, id);
	  
	  boolean check = preparedStatement.executeUpdate() > 0;
	  return check;
  }
}

package cmc.com.vn.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cmc.com.vn.model.Category;
import cmc.com.vn.ultil.ConnectDb;

public class CategoryDao {
  public List<Category> getAllCategories() throws ClassNotFoundException,
      SQLException {
    String SELECT_QUERY = "SELECT * FROM dbo.[Category]";
    List<Category> list = new ArrayList<Category>();
    Connection connectDB = ConnectDb.connect();
    Statement statement = connectDB.createStatement();
    ResultSet resul = statement.executeQuery(SELECT_QUERY);
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
    final String SELECT_QUERY = "SELECT * FROM dbo.Category WHERE CategoryId = "
        + String.valueOf(id);
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(SELECT_QUERY);
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
    final String SELECT_QUERY = "SELECT * FROM dbo.Category WHERE CategoryId = "
        + "(SELECT CategoryId FROM dbo.Product WHERE ProductId = "+id+")";
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(SELECT_QUERY);
    while (resultSet.next()) {
      category.setCategoryId(resultSet.getInt(1));
      category.setCategoryName(resultSet.getString(2));
      break;
    }
    return category;
  }
}

package cmc.com.vn.dao;

import java.sql.Connection;
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
  public List<Product> getAllProduct() throws SQLException,
      ClassNotFoundException {
    List<Product> list = new ArrayList<Product>();
    Connection connection = ConnectDb.connect();
    String sql = "SELECT * FROM dbo.Product";
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sql);
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
    List<Product> list = new ArrayList<Product>();
    Connection connection = ConnectDb.connect();
    String sql = "SELECT * FROM dbo.Product WHERE CategoryId = " + String.valueOf(id);
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sql);
    while (resultSet.next()){
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
  public Product getProductById(int id) throws SQLException,ClassNotFoundException{
    Product product = new Product();
    Connection connection = ConnectDb.connect();
    final String SELECT_QUERY = "SELECT * FROM dbo.Product WHERE ProductId = "+String.valueOf(id);
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(SELECT_QUERY);
    while (resultSet.next()){
      product.setProductId(resultSet.getInt(1));
      product.setProductName(resultSet.getString(2));
      product.setCaterogyId(resultSet.getInt(3));
      product.setPrice(resultSet.getFloat(4));
      product.setDescription(resultSet.getString(5));
      product.setImage(resultSet.getString(6));
      break;
    }
    return product;
  }
}

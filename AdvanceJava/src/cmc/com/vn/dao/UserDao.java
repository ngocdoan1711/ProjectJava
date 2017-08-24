package cmc.com.vn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cmc.com.vn.model.User;
import cmc.com.vn.ultil.ConnectDb;

public class UserDao {
  public User Login(String username, String password) throws ClassNotFoundException, SQLException {
    User user = new User();
    Connection connectDB = ConnectDb.connect();
    String SELECT_QUERY = "SELECT * FROM dbo.[User] WHERE UserName = ? AND Password = ?";
    PreparedStatement prepare = connectDB.prepareStatement(SELECT_QUERY);
    prepare.setString(1, username);
    prepare.setString(2, password);
    ResultSet resul = prepare.executeQuery();
    while(resul.next()){
      user.setUserId(resul.getInt(1));
      user.setUserName(resul.getString(2));
      user.setPassword(resul.getString(3));
      user.setEmail(resul.getString(4));
      user.setPhone(resul.getString(5));
      user.setAccess(resul.getInt(6));
      break;
    }
    return user;
  }
  public boolean isLoginSuccess(String username, String password) throws ClassNotFoundException, SQLException{
    Connection connection = ConnectDb.connect();
    String SELECT_QUERY = "SELECT * FROM dbo.[User] WHERE UserName = ? AND Password = ?";
    PreparedStatement statement = connection.prepareStatement(SELECT_QUERY);
    statement.setString(1, username);
    statement.setString(2, password);
    ResultSet resul = statement.executeQuery();
    if(resul.next()){
      return true;
    }
    return false;
  }
}

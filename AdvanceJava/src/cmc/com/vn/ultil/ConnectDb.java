package cmc.com.vn.ultil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDb {
  private static final String Driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
  private static final String ConnectionURL = "jdbc:sqlserver://localhost:1433"
      + ";instance=SQLEXPRESS;databaseName=AdvanceJava;";
  private static final String userName = "ngocdv";
  private static final String passWord = "123456";

  public static Connection connect() throws ClassNotFoundException,
      SQLException {
    // Load driver
    Class.forName(Driver);
    // Get connection
    Connection connection = DriverManager.getConnection(ConnectionURL,
        userName, passWord);
    return connection;
  }
}

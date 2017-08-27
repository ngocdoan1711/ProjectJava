package cmc.com.vn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cmc.com.vn.model.User;
import cmc.com.vn.ultil.ConnectDb;

public class UserDao {
	
	private static final String SELECT_QUERY = "SELECT * FROM dbo.[User] WHERE UserName = ? AND Password = ?";
	private static final String SELECT_ALL_QUERY ="SELECT * FROM dbo.[User]";
	private static final String SELECT_BY_PRODUCTID_QUERY = "SELECT * FROM dbo.[User] WHERE UserId = ?";
	private static final String INSERT_QUERY = "INSERT INTO dbo.[User] VALUES(?,?,?,?,?)";
	private static final String UPDATE_QUERY ="UPDATE dbo.[User] SET UserName = ?, [Password] = ?, Email = ?, Phone = ?, Access = ? WHERE UserId = ?";
	private static final String DELETE_QUERY = "DELETE FROM dbo.[User] WHERE UserId = ?";
	
	public User Login(String username, String password)
			throws ClassNotFoundException, SQLException {
		User user = new User();
		Connection connectDB = ConnectDb.connect();
		PreparedStatement prepare = connectDB.prepareStatement(SELECT_QUERY);
		prepare.setString(1, username);
		prepare.setString(2, password);
		ResultSet resul = prepare.executeQuery();
		while (resul.next()) {
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

	public boolean isLoginSuccess(String username, String password)
			throws ClassNotFoundException, SQLException {
		Connection connection = ConnectDb.connect();
		PreparedStatement statement = connection.prepareStatement(SELECT_QUERY);
		statement.setString(1, username);
		statement.setString(2, password);
		ResultSet resul = statement.executeQuery();
		if (resul.next()) {
			return true;
		}
		return false;
	}
	public List<User> getAllUser() throws SQLException,ClassNotFoundException{
		List<User> listUser	= new ArrayList<User>();
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_QUERY);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			User user = new User();
			user.setUserId(resultSet.getInt(1));
			user.setUserName(resultSet.getString(2));
			user.setPassword(resultSet.getString(3));
			user.setEmail(resultSet.getString(4));
			user.setPhone(resultSet.getString(5));
			user.setAccess(resultSet.getInt(6));
			listUser.add(user);
		}
		return listUser;
	}
	public User getUserById(int id) throws SQLException, ClassNotFoundException {
		User user = new User();
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_PRODUCTID_QUERY);
		preparedStatement.setInt(1, id);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			user.setUserId(resultSet.getInt(1));
			user.setUserName(resultSet.getString(2));
			user.setPassword(resultSet.getString(3));
			user.setEmail(resultSet.getString(4));
			user.setPhone(resultSet.getString(5));
			user.setAccess(resultSet.getInt(6));
			
			break;
		}
		return user;
	}
	public boolean insertUser(User user) throws SQLException, ClassNotFoundException {
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY);
		preparedStatement.setString(1, user.getUserName());
		preparedStatement.setString(2, user.getPassword());
		preparedStatement.setString(3, user.getEmail());
		preparedStatement.setString(4, user.getPhone());
		preparedStatement.setInt(5, user.getAccess());

		boolean check = preparedStatement.executeUpdate() > 0;
		return check;
	}
	public boolean editUser(int userId, User user) throws SQLException, ClassNotFoundException {
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_QUERY);
		preparedStatement.setString(1, user.getUserName());
		preparedStatement.setString(2, user.getPassword());
		preparedStatement.setString(3, user.getEmail());
		preparedStatement.setString(4, user.getPhone());
		preparedStatement.setInt(5, user.getAccess());
		preparedStatement.setInt(6, userId);

		boolean check = preparedStatement.executeUpdate() > 0;
		return check;
	}
	
	public boolean deleteUser(int userId) throws SQLException, ClassNotFoundException{
		Connection connection = ConnectDb.connect();
		PreparedStatement preparedStatement = connection.prepareStatement(DELETE_QUERY);
		preparedStatement.setInt(1, userId);
		
		boolean check = preparedStatement.executeUpdate() > 0;
		return check;
	}

}

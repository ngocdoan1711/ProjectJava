package cmc.action.useraction;

public class UserAction {
	private String userName;
	private String password;
	public String checkLogin(){
		if("admin".equals(this.userName) && "admin".equals(this.password))
		{
			return "success";
		}else{
			return "error";
		}
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}

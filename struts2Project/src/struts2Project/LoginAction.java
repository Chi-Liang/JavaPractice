package struts2Project;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	String account;
	String password;

	@Override
	public String execute() throws Exception {
		if ("demo".equals(account) && "demo12345".equals(password)) {
			return "success";
		}
		return "login";
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}

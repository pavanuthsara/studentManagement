package Model;

public class StudentDemo {
	private int sid;
	private String name;
	private String password;
	private String email;
	private String date;
	
	public StudentDemo(){
		sid = 0;
	}
	
	public StudentDemo(int sid, String name, String password, String email, String date) {
		this.sid = sid;
		this.name = name;
		this.password = password;
		this.email = email;
		this.date = date;
	}

	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	
}

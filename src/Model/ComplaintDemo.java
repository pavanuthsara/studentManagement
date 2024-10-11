package Model;

public class ComplaintDemo {
	private int cid;
	private String complain;
	private String status;
	
	public ComplaintDemo() {
		this.cid = 0;
	}
	
	public ComplaintDemo(int cid, String complain, String status) {
		this.cid = cid;
		this.complain = complain;
		this.status = status;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getComplain() {
		return complain;
	}

	public void setComplain(String complain) {
		this.complain = complain;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	

}

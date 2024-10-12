package Services;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import Controller.DBConnect;
import Model.ComplaintDemo;

public class cServiceDemo {
	public cServiceDemo() {
		
	}
	
	public void insertData(ComplaintDemo cdemo) {
		try {
			String complaint = cdemo.getComplain();
			String status = cdemo.getStatus();
			
			
			String sql = "insert into complaintDemo(complaint, status) values (?,?);";
			PreparedStatement stmt = DBConnect.getConnection().prepareStatement(sql);
			
			stmt.setString(1, complaint);
			stmt.setString(2, status);
			
			int result = stmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Insert success");
			} else {
				System.out.println("Insert unsuccess!");
			}
			
			stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateData(ComplaintDemo cdemo) {
		try {
			int cid = cdemo.getCid();
			String complaint = cdemo.getComplain();
			String status = cdemo.getStatus();
			
			String updateSql = "update complaintDemo set complaint=?, status=? where cid=?;";
			PreparedStatement stmt = DBConnect.getConnection().prepareStatement(updateSql);
			
			stmt.setString(1, complaint);
			stmt.setString(2, status);
			stmt.setInt(3, cid);
			
			int result = stmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Update success");
			} else {
				System.out.println("Update unsuccess!");
			}
			
			stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//Delete complaint from db - service method
	public String deleteData(int cid) {
		String msg = " ";
		try {
			DBConnect dbc = new DBConnect();
			
			String sql = "delete from complaintDemo where cid=?;";
			PreparedStatement ps = DBConnect.getConnection().prepareStatement(sql);
			
			ps.setInt(1, cid);
			int result = ps.executeUpdate(); //execute the delete query
			
			String smsg = cid + " deleted successfully";
			String umsg = cid + " deletion unsuccessfull!";
			
			
			if(result > 0) {
				System.out.println(smsg);
				msg = smsg;
				
			}else {
				System.out.println(umsg);
				msg = umsg;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	public ArrayList<ComplaintDemo> fetchData(){
		ArrayList<ComplaintDemo> cmp = new ArrayList<>();
		
		try {
			
			Statement stmt = DBConnect.getConnection().createStatement();
			String sql = "Select * from complaintDemo;";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String complaint = rs.getString(2);
				String status = rs.getString(3);
				
				ComplaintDemo cd = new ComplaintDemo(id, complaint, status);
				cmp.add(cd);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		} 
		
		
		return cmp;
	}
	
	public boolean checkLogIn(int sid, String password) {
		boolean x = false; 
		try {
			//query to execute
			String sql = "select * from student where sid=?;";
			PreparedStatement ps = DBConnect.getConnection().prepareStatement(sql);
			
			ps.setInt(1, sid);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				String name = rs.getString(2);
				String pass = rs.getString(3);
				if(pass.equals(password)) {
					System.out.println("Log in success! for SID : " + sid );
					System.out.println("Student name : " + name);
					x = true;
				} else {
					System.out.println("error with login!, Invalid sid or password!");
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return x;
	}

}

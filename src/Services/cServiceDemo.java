package Services;

import java.sql.*;
import java.util.ArrayList;
import Controller.DBConnect;
import Model.ComplaintDemo;
import Model.StudentDemo;

public class cServiceDemo {
	public cServiceDemo() {
		
	}
	
	//insert data function as service
	public void insertData(ComplaintDemo cdemo) {
		try {
			String complaint = cdemo.getComplain();
			String status = cdemo.getStatus();
			int sid = cdemo.getSid();
			
			
			String sql = "insert into complaintDemo(complaint, status, sid) values (?,?,?) ;";
			
			DBConnect dbConnect = DBConnect.getInstance();
			Connection con = dbConnect.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, complaint);
			stmt.setString(2, status);
			stmt.setInt(3, sid);
			
			int result = stmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Insert success");
			} else {
				System.out.println("Insert unsuccess!");
			}
			
			stmt.close();
		}catch (SQLException e) {
	        e.printStackTrace(); // Catches database-related exceptions
	    } catch (NullPointerException e) {
	        System.out.println("Null value encountered: " + e.getMessage()); // Catches null pointer exceptions
	    } catch (ClassNotFoundException e) {
	        System.out.println("Database driver not found: " + e.getMessage()); // Catches class not found exceptions
	    }
	}
	
	//update data function as service
	public void updateData(ComplaintDemo cdemo) {
		try {
			int cid = cdemo.getCid();
			String complaint = cdemo.getComplain();
			String status = cdemo.getStatus();
			
			String updateSql = "update complaintDemo set complaint=?, status=? where cid=?;";
			
			DBConnect dbConnect = DBConnect.getInstance();
			Connection con = dbConnect.getConnection();
			PreparedStatement stmt = con.prepareStatement(updateSql);
			
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
		}catch (SQLException e) {
	        e.printStackTrace(); // Catches database-related exceptions
	    } catch (NullPointerException e) {
	        System.out.println("Null value encountered: " + e.getMessage()); // Catches null pointer exceptions
	    } catch (ClassNotFoundException e) {
	        System.out.println("Database driver not found: " + e.getMessage()); // Catches class not found exceptions
	    }
	}
	
	//Delete complaint from db - service method
	public String deleteData(int cid) {
		String msg = " ";
		try {
			
			String sql = "delete from complaintDemo where cid=?;";
			
			DBConnect dbConnect = DBConnect.getInstance();
			Connection con = dbConnect.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			
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
			
			
		}catch (SQLException e) {
	        e.printStackTrace(); // Catches database-related exceptions
	    } catch (NullPointerException e) {
	        System.out.println("Null value encountered: " + e.getMessage()); // Catches null pointer exceptions
	    } catch (ClassNotFoundException e) {
	        System.out.println("Database driver not found: " + e.getMessage()); // Catches class not found exceptions
	    }
		
		return msg;
	}
	
	
	//Student log in check function
	public StudentDemo checkLogIn(int sid, String password) {
		StudentDemo sd = null;
		
		try {
			//query to execute
			String sql = "select * from student where sid=? and password=?;";
			
			DBConnect dbConnect = DBConnect.getInstance();
			Connection con = dbConnect.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setInt(1, sid);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				int psid = rs.getInt(1);
				String name = rs.getString(2);
				String pass = rs.getString(3);
				String email = rs.getString(4);
				String bdate = rs.getString(5);
				
				sd = new StudentDemo(psid, name, pass, email, bdate);

				System.out.println("Log in success! for SID : " + sid );
				System.out.println("Student name : " + name);
			}else {
				sd = new StudentDemo();
				System.out.println("error with login!, Invalid sid or password!");
			}
		}catch (SQLException e) {
	        e.printStackTrace(); // Catches database-related exceptions
	    } catch (NullPointerException e) {
	        System.out.println("Null value encountered: " + e.getMessage()); // Catches null pointer exceptions
	    } catch (ClassNotFoundException e) {
	        System.out.println("Database driver not found: " + e.getMessage()); // Catches class not found exceptions
	    }
		
		return sd;
	}
	
	//read complaint data from db
	public ArrayList<ComplaintDemo> readComplaints(int sid) {
		
		//arrayList to store data of complaints
		ArrayList<ComplaintDemo> cdArr = new ArrayList<>();
		
		try {
			String sql = "select * from complaintDemo where sid=?;";
			
			DBConnect dbConnect = DBConnect.getInstance();
			Connection con = dbConnect.getConnection();
			
			PreparedStatement ps  = con.prepareStatement(sql);
			
			ps.setInt(1, sid);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int cid = rs.getInt(1);
				String complaint = rs.getString(2);
				String status = rs.getString(3);
				
				ComplaintDemo cd = new ComplaintDemo(cid, complaint, status);
				cdArr.add(cd);
			}
			
		} catch (SQLException e) {
	        e.printStackTrace(); // Catches database-related exceptions
	    } catch (NullPointerException e) {
	        System.out.println("Null value encountered: " + e.getMessage()); // Catches null pointer exceptions
	    } catch (ClassNotFoundException e) {
	        System.out.println("Database driver not found: " + e.getMessage()); // Catches class not found exceptions
	    }
		
		return cdArr;
		
	}
	

}

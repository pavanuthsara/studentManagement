package Services;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Controller.DBConnect;
import Model.ComplaintDemo;

public class cServiceDemo {
	public cServiceDemo() {
		
	}
	
	public void insertData(ComplaintDemo cdemo) {
		try {
			String complaint = cdemo.getComplain();
			String status = cdemo.getStatus();
			
			DBConnect dbc = new DBConnect();
			dbc.getConnection();
			
			String sql = "insert into complaintDemo(complaint, status) values (?,?);";
			PreparedStatement stmt = dbc.getConnection().prepareStatement(sql);
			
			stmt.setString(1, complaint);
			stmt.setString(2, status);
			
			int result = stmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Insert success");
			} else {
				System.out.println("Insert unsuccess! fuck!!!");
			}
			
			stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ComplaintDemo> fetchData(){
		ArrayList<ComplaintDemo> cmp = new ArrayList<>();
		
		try {
			DBConnect dbc = new DBConnect();
			dbc.getConnection();
			
		}catch (Exception e) {
			e.printStackTrace();
		} 
		
		
		return cmp;
	}

}

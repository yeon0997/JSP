package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class memberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public memberDAO() {

		try {
			String url = "jdbc:mysql://localhost:3306/secretary";
			String id ="root";
			String pw ="1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, pw);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPW) {
		
		String sql="select * from members where id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				user1.setId("id");
				user1.setPw("pw");
			}
			
			
			if(rs.next()) {
				if(rs.getString(1).equals(userPW)) {
					return 1;
				} else
					return 0;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -2;
	}
}

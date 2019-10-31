package com.todo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TodoDAO {
	private Connection conn; 
	private PreparedStatement pstmt;
	private ResultSet rs;

	public TodoDAO() { 

		try {

			String dbURL = "jdbc:mysql://localhost:3306/secretary"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�

			String dbID = "root";

			String dbPassword = "madang";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public int showlist(String userID, String userPassword) {

		String SQL = "SELECT content, tdate FROM todo WHERE id = ?";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				if (rs.getString(1).equals(userPassword)) {

					return 1;

				}
			}
		} catch (Exception e) {

			e.printStackTrace();

		}
		return 0;
	}
}
package com.member;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class MemberDAO {

   private Connection conn; 
   private PreparedStatement pstmt;
   private ResultSet rs;

   public MemberDAO() { 

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




   public int login(String userID, String userPassword) {

      String SQL = "SELECT id, pw FROM members WHERE id = ?";

      try {

         // pstmt : prepared statement ������ sql������ db�� �����ϴ� �������� �ν��Ͻ�������

         pstmt = conn.prepareStatement(SQL);

         // sql������ ���� ��ŷ����� ����ϴ°�... pstmt�� �̿��� �ϳ��� ������ �̸� �غ��ؼ�(����ǥ���)

         // ����ǥ�ش��ϴ� ������ �������̵��, �Ű������� �̿�.. 1)�����ϴ��� 2)��й�ȣ��������

         pstmt.setString(1, userID);

         // rs:result set �� �������

         rs = pstmt.executeQuery();

         // ����� �����Ѵٸ� ����

         if (rs.next()) {

            // �н����� ��ġ�Ѵٸ� ����

            if (rs.getString(1).equals(userPassword)) {

               return 1; // �α��� ����

            }
         }
      } catch (Exception e) {

         e.printStackTrace();

      }
      return 0; // �����ͺ��̽� ������ �ǹ�
   }
}
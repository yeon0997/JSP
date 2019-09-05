package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.oreilly.servlet.MultipartRequest;
import mvc.database.BookDBConnection;
import dto.BookProduct;



public class BookProductRepository {
	
	private ArrayList<BookProduct> listOfProducts = new ArrayList<BookProduct>();
	private static BookProductRepository instance = new BookProductRepository();

	public static BookProductRepository getInstance(){  //get硫붿냼�뱶(�긽�뭹 �룎�젮以�)
		return instance;   //�깮�꽦�옄瑜� 諛쏆� �씤�뒪�꽩�뒪
	} 
	
	public BookProductRepository() {

		
		//db�뿰寃곗떆�룄
		
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "madang";
			String password = "madang";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		}	catch (SQLException e){
			System.out.println("�뜲�씠�꽣踰좎씠�뒪 �뿰寃곗씠 �떎�뙣 �뻽�뒿�땲�떎.<br>");
			System.out.println("SQLException : " + e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String sql = "select * from books ";
		try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			BookProduct list = new BookProduct();
			list.setProductId(rs.getString("b_id"));
			list.setPname(rs.getString("b_name"));
			list.setUnitPrice(rs.getInt("b_unitPrice"));
			list.setDescription(rs.getString("b_description"));
			list.setCategory(rs.getString("b_category"));
			list.setManufacturer(rs.getString("b_manufacturer"));
			list.setUnitsInStock(rs.getInt("b_unitsInStock"));
			list.setCondition(rs.getString("b_condition"));
			list.setFilename(rs.getString("b_fileName"));
			
			listOfProducts.add(list);
			}

		}catch (Exception ex) {
			System.out.println("�뿉�윭: " + ex);
		} finally {			
			try {				
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();												
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}	
	}
	


	public ArrayList<BookProduct> getAllProducts() {
		return listOfProducts;
	}
	
	public BookProduct getProductById(String productId) {
		BookProduct productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			BookProduct product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(BookProduct product) { //set 硫붿냼�뱶(�긽�뭹�벑濡�)
		listOfProducts.add(product);
	}
}

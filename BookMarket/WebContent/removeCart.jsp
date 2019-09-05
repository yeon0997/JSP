<%@page import="java.util.ArrayList"%>
<%@page import="dto.BookProduct"%>
<%@page import="dao.BookProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 <%
     	String id = request.getParameter("id");
          		if(id==null || id.trim().equals("")){
          	response.sendRedirect("products.jsp");
          		}
          	 
          		BookProductRepository dao = BookProductRepository.getInstance();
          	 
          		BookProduct product = dao.getProductById(id);
          		if(product ==null){
          	response.sendRedirect("exceptionNoProductId.jsp");
          		}
          	 
          		ArrayList<BookProduct> cartList = (ArrayList<BookProduct>)session.getAttribute("cartlist");
          		BookProduct goodsQnt = new BookProduct();
          		for(int i=0; i<cartList.size(); i++){
          	goodsQnt = cartList.get(i);
          	if(goodsQnt.getProductId().equals(id)){
          		cartList.remove(goodsQnt);
          	}
          		}
          	 
          		response.sendRedirect("cart.jsp");
     %>
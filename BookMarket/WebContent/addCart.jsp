<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="dao.BookProductRepository"%>
<%@page import="dto.BookProduct"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	

	String id=request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	

	BookProductRepository dao = new BookProductRepository();
	
	
	
	BookProduct product = dao.getProductById(id);
	if(product == null){
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<BookProduct> goodsList = dao.getAllProducts();
	BookProduct goods = new BookProduct();
	for(int i=0; i<goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getProductId().equals(id)){
	break;
		}
	}
	
	ArrayList<BookProduct> list = (ArrayList<BookProduct>)session.getAttribute("cartlist");
	if(list==null){
		list = new ArrayList<BookProduct>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	BookProduct goodsQnt = new BookProduct();
	for(int i=0; i<list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getProductId().equals(id)){
	cnt++;
	int orderQuantity = goodsQnt.getQuantity()+1;
	goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt==0){
		goods.setQuantity(1);
		list.add(goods);
	}
	

	response.sendRedirect("./product.jsp?id="+id);
	
%>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>

package ch18.com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("id");
		String password = request.getParameter("passwd");
		PrintWriter out = response.getWriter();

		String htmlResponse = "<html>";
		htmlResponse += "<h3> 아이디 : " + username + "<br/>";
		htmlResponse += "비밀번호 : " + password + "</h3>";
		htmlResponse += "</html>";

		out.println(htmlResponse);

	}
}

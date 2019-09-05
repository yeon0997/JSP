package filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.jstl.core.Config;

public class LogFileFilter implements Filter{

	PrintWriter writer;
	
	@Override
	public void init(FilterConfig Config) throws ServletException {
		
		String filename = Config.getInitParameter("filename");
		
		if(filename == null)
			throw new ServletException("로그 파일의 이름을 찾을수가 없습니다.");
		
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		}catch (IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		writer.println("접속한 클라이언트 IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
		writer.println("접근한 URL 경로 : " + getURLPath(request));
		writer.println("요청 처리 시작 시간 : " + getCurrentTime());
		
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		writer.println("요청 처리 종료 시각 : " + getCurrentTime());
		writer.println("요청 처리 소요 시각 : " + (end-start)+"ms");
		writer.println("============================================");
	}


	@Override
	public void destroy() {
		writer.close();
	}
	
	

	private String getURLPath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath="";
		String queryString="";
		if(request instanceof HttpServletRequest) {
			req = (HttpServletRequest)request;
			currentPath = req.getRequestURI();
			queryString = req.getQueryString();
			queryString = queryString == null? "": "?"+queryString;
		}
		return currentPath + queryString;
	}
	

	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calender = Calendar.getInstance();
		calender.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calender.getTime());
	}

	
}

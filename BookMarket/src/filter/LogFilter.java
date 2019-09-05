package filter;

import java.io.IOException;
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


public class LogFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		System.out.println("WebMarket 珥덇린�솕...");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("�젒�냽�븳 �겢�씪�씠�뼵�듃 IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
		System.out.println("�젒洹쇳븳 URL 寃쎈줈 : " + getURLPath(request));
		System.out.println("�슂泥� 泥섎━ �떆�옉 �떆媛� : " + getCurrentTime());
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		System.out.println("�슂泥� 泥섎━ 醫낅즺 �떆媛� : " + getCurrentTime());
		System.out.println("�슂泥� 泥섎━ �냼�슂 �떆媛� : " + (end-start)+"ms");
		System.out.println("============================================");
	}


	@Override
	public void destroy() {

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

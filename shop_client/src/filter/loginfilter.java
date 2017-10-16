package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginfilter implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	String ex = ".js,css,png,gif,jpg,ttf,icon,woff,.action,";
	String usermatch = "struct/client/enterlogin,struct/client/login,/main.jsp,struct/client/login.jsp,struct/client/logout,struct/main.htm,";
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String url = req.getServletPath();
		String e = url.substring(url.length()-3)+",";
		if(ex.indexOf(e)>=0||usermatch.indexOf(url+",")>=0){
			
			chain.doFilter(request, response);
		}else{
				System.out.println(url);
				if(req.getSession().getAttribute("userlogininfo")==null) resp.sendRedirect("client/enterlogin.action");
				else chain.doFilter(request, response);
			}
	}
	public void init(FilterConfig filterConfig) throws ServletException {
	}
}

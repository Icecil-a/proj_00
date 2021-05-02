package proj.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object login = session.getAttribute("login");
		
		if(!session.getId().equals("admin")) {
			session.invalidate();
			response.sendError(403, "접근 권한이 없습니다.");
			return false;
		}
		
		if(login == null) {
			response.sendRedirect("/login.do");
			return false;
		}
		
		return true;
	}
	
}

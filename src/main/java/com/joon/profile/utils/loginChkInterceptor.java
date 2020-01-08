package com.joon.profile.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class loginChkInterceptor extends HandlerInterceptorAdapter {
	private Log log = LogFactory.getLog(loginChkInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request,
							HttpServletResponse response,
							Object handler) throws Exception {
		
		HttpSession session = request.getSession(false);
		response.setContentType("text/html; charset=UTF-8");
		log.info("session user_id  :: " + session.getAttribute("user_id"));
		
		if (session.getAttribute("user_id") == null || org.springframework.util.StringUtils.isEmpty(session.getAttribute("user_id"))) {
			response.sendRedirect("alertLogin");
		}
		
		return true;
	}
}

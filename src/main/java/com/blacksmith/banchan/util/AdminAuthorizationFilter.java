package com.blacksmith.banchan.util;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

public class AdminAuthorizationFilter implements Filter {

	@Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 초기화 작업이 필요한 경우에 구현
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("5555555555555555555555555555555");
    	
    	HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        
        HttpSession session = request.getSession(false); // 세션이 없으면 null 반환

        // JWT 토큰 가져오기
        String jwtToken = (String)session.getAttribute("adminToken");
        System.out.println(request.getHeader("adminToken"));
        System.out.println(jwtToken);
        System.out.println("jsfaldkj");

        // JWT 토큰 유효성 검사 및 관리자 권한 확인
        if (jwtToken != null && isValidJwtToken(jwtToken) && isAdmin(jwtToken)) {
        
            filterChain.doFilter(request, response);
        } else {
        	HttpServletResponse httpResponse = (HttpServletResponse) response;
            httpResponse.sendRedirect("banchan?command=admin_login_form"); // 로그인 페이지 URL로 리디렉션
        }
    }

    @Override
    public void destroy() {
        // 필터가 소멸될 때 호출되는 메서드
    }

    private boolean isValidJwtToken(String jwtToken) {
        // JWT 토큰의 유효성 검사 로직을 구현 (예: 시그니처 검사)
        // 유효한 토큰인지 확인하는 로직을 구현하여 true 또는 false를 반환
        return true; // 예시로 항상 유효하다고 가정
    }

    private boolean isAdmin(String jwtToken) {
        // JWT 토큰을 파싱하여 관리자 여부 확인 로직을 구현
        // 관리자인 경우 true, 아닌 경우 false를 반환
        return true; // 예시로 항상 관리자로 가정
    }
}

package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutCon")
public class LogoutCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//세션 생성
				HttpSession session = request.getSession();
			
				//세션 삭제 -> invalidate() 전체삭제 / removeAttribute() 하나삭제
				//LoginCon에 생성된 세션값 name값 확인 후 작성!! (중요)
				session.removeAttribute("loginMember");
				response.sendRedirect("MainPage.jsp");
	}

}

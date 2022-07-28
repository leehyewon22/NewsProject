package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.email, pw 받기
				request.setCharacterEncoding("UTF-8");
				
				String mem_id = request.getParameter("mem_id");
				String mem_pw = request.getParameter("mem_pw");
				
				//2. Member객체 생성(id,pw만 묶여진거~ 롬북사용?)
				Member vo = new Member(mem_id,mem_pw);
				
				//3. MemberDAO 객체 생성		
				MemberDAO dao = new MemberDAO();
				
				
				//4. dao.selectMember() 메서드 호출
				Member loginMember = dao.selectMember(vo);
				
				if(loginMember!=null) { //로그인 성공
					System.out.println("로그인성공");
					// 5. 세션저장
					HttpSession session = request.getSession();
					session.setAttribute("loginMember", loginMember);
					response.sendRedirect("MainPage.jsp");
				}else { //로그인 실패
					System.out.println("로그인실패");
					response.sendRedirect("Login.jsp");			
				}
		
	}

}
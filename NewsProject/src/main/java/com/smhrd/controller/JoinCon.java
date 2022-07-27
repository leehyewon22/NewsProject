package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//요청데이터(파라미터) 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String catseq = request.getParameter("catseq");
		String joindate = request.getParameter("joindate");
		String memtype = request.getParameter("memtype");
	
		Member vo = new Member(id, pw, name, catseq, joindate, memtype);
	
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.insertMember(vo);
		//1. MemberDAO에 insertMember 메서드 작성하기
		//2. MemberMApper.xml 만들고 insert문 작성하기
		
		if(cnt>0) { //회원가입성공
			System.out.println("회원가입성공");
			//포워딩 joinSuccess.jsp 이동 , email -> request 영역에 저장
			RequestDispatcher rd = request.getRequestDispatcher("JoinSuccess.jsp");
			request.setAttribute("joinid",id); // (보낼거에대한이름, 보낼값)
			rd.forward(request, response);
		}else {
			System.out.println("회원가입실패");
			//포워딩
			RequestDispatcher rd = request.getRequestDispatcher("Join.jsp");
			request.setAttribute("joinid",id);
			rd.forward(request, response);
		}
	
		
	}
	
	

}
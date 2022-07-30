package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//요청데이터(파라미터) 받기
		String id = request.getParameter("mem_id");
		String pw = request.getParameter("mem_pw");
		String name = request.getParameter("mem_name");
		// 사용자의 카테고리 입력을 먼저 받기
		String[] catseq = request.getParameterValues("cat");
//		BigDecimal cat_seq = new BigDecimal(request.getParameterValues("cat"));
		// 입력을 받은 카테고리를 db와 비교하기 위해 한번 더 저장?
//		BigDecimal catseq = new BigDecimal(request.getParameter("cat"));
		System.out.println(catseq);
		
		BigDecimal[] catArray = new BigDecimal[3];
		int i = 0;
		for(String cat : catseq) {
			BigDecimal bdCat = new BigDecimal(cat);
			catArray[i] = bdCat;
			i++;
		}
		
		
		
		System.out.println(catArray[0]);
		System.out.println(catArray[1]);
		System.out.println(catArray[2]);
		/*
		String catnum = null;
		int num = 0;
		// 배열에 담긴 선택된 카테고리 출력
		if(catseq!=null) {
			for(int i=0; i<catseq.length;i++) {
				System.out.println(catseq[i]);
				catnum += catseq[i];
			}
		}
		System.out.println(catnum);
		catnum = catnum.replace("null", "");
		System.out.println(catnum);
		// -----------------------------------------
		
		num = Integer.parseInt(catnum);
		System.out.println(num);
		/*
		 * String joindate = request.getParameter("mem_joindate"); String memtype =
		 * request.getParameter("mem_type");
		 */
	
		Member vo = new Member(id, pw, name, catArray[0], catArray[1], catArray[2]);
	
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.insertMember(vo);
		//1. MemberDAO에 insertMember 메서드 작성하기
		//2. MemberMApper.xml 만들고 insert문 작성하기
		
		if(cnt>0) { //회원가입성공
			System.out.println("회원가입성공");
			//포워딩 joinSuccess.jsp 이동 , email -> request 영역에 저장
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
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
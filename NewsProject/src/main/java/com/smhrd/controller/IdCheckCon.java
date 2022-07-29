package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

@WebServlet("/IdCheckCon")
public class IdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				String inputE = request.getParameter("inputE");
				
				MemberDAO dao = new MemberDAO();
				boolean checkE = dao.IdCheck(inputE);
				
				System.out.println(checkE);
				
				PrintWriter out = response.getWriter();
				out.print(checkE); // print는 문자열만 보낸다?
	}

}
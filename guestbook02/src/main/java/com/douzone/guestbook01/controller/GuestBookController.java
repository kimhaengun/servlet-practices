package com.douzone.guestbook01.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook01.dao.GuestBookDao;
import com.douzone.guestbook01.vo.GuestBookVo;

//@WebServlet("/gb")
public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String action = request.getParameter("cmd");

		if ("add".equals(action)) {
			GuestBookVo vo = new GuestBookVo();
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			
			new GuestBookDao().insert(vo);
			
			response.sendRedirect("/guestbook02/gb");
			
		}else if("deleteform".equals(action)) {
			String no = request.getParameter("no");
			System.out.println(no);
			
			request.setAttribute("no", no);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);			
			
		}else if("delete".equals(action)){
			GuestBookVo vo = new GuestBookVo();
			String sno = request.getParameter("no");
			Long no = Long.parseLong(sno);
			String password = request.getParameter("password");
			vo.setNo(no);
			vo.setPassword(password);
			
			GuestBookDao dao = new GuestBookDao();
			dao.delete(vo);
			
			response.sendRedirect("/guestbook02/gb");
			
		}else {
			List<GuestBookVo> list = new GuestBookDao().findAll();

			request.setAttribute("list", list);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

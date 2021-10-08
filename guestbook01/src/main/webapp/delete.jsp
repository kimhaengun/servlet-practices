<%@page import="com.douzone.guestbook01.dao.GuestBookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	GuestBookVo vo = new GuestBookVo();
	String sno = request.getParameter("no");
	Long no = Long.parseLong(sno);
	String password = request.getParameter("password");
	vo.setNo(no);
	vo.setPassword(password);
	
	GuestBookDao dao = new GuestBookDao();
	dao.delete(vo);
	
	response.sendRedirect("index.jsp");
	
%>
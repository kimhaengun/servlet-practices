<%@page import="com.douzone.guestbook01.dao.GuestBookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	GuestBookVo vo = new GuestBookVo();
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("index.jsp");
	
	
%>
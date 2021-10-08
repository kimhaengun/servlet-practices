<%@page import="com.douzone.guestbook01.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String no = (String)request.getAttribute("no");
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="/guestbook02/gb?cmd=delete">
		<input type='hidden' name="no" value=<%= no%>>
		<input type="password" name="password" placeholder="비밀번호">
		<input type="submit" value="확인">
	</form>
	<br>
	<a href="/guestbook01">메인으로 돌아가기</a>
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글 설정
	request.setCharacterEncoding("utf-8");
	// 태그 name 값
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String birthYear = request.getParameter("birthyear");
	String gender = request.getParameter("gender");
	String[] hobbys = request.getParameterValues("hobby");
	String profile = request.getParameter("profile");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이메일 : <%= email%> <br/>
	비밀번호 : <%= password%> <br/>
	생년 : <%= birthYear %> <br/>
	성별 : <%= gender %> <br/>
	
	<ul>
	<% 
		for(String hobby:hobbys){
	%>
		<li><strong><%=hobby %></strong></li>
	<%
		}
	%>
	</ul>
	<br/>
	<p>
	<%= profile.replaceAll("\n", "<br/>") %>
	</p>
	<br/>
	<a href="form.jsp">폼으로 가기</a>
</body>
</html>
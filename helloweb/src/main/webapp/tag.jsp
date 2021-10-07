<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello world</h1>
	<h2>Hello world</h2>
	<h3>Hello world</h3>
	<h4>Hello world</h4>
	<h5>Hello world</h5>
	<table border="1" cellspacing='0' cellpadding="10">
		<tr>
			<th>글 번호</th>
			<th>글 제목</th>
			<th>작성자</th>
		</tr>
		<tr>
			<td>1</td>
			<td>게시판1</td>
			<td>test1</td>
		</tr>
		<tr>
			<td>2</td>
			<td>게시판2</td>
			<td>test2</td>
		</tr>
	</table>
	</br>
	<!-- 절대 경로-->
	<img alt="" src="/helloweb/assets/images/loo.jpg" style="height: 400px;widows: 400px; border: 5px solid red"/>
	</br>
	<!-- 상대 경로-->
	<img alt="" src="assets/images/loo.jpg"/>
	</br>
	<a href="fom.jsp">폼으로 가보자</a>
	<a href="/helloweb/hello.jsp">안녕</a>
	<p>안녕 나는 p테그야 <br/>안녕 나는 p테그야</p>
</body>
</html>
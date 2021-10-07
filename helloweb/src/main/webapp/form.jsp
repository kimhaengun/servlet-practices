<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join.jsp" method="post">
		이메일 : <input type="text" name="email" value="" placeholder="값을 넣어봐"/>
		<br/>
		<br/>
		비밀번호 : <input type="password" name="password" placeholder="값을 넣어봐"/>
		<br/>
		<br/>
		생년 : 
		<select name="birthyear">
			<option value="1">1년</option>
			<option value="2">2년</option>
			<option value="3">3년</option>
		</select>
		<br/><br/>
		
		<!-- 하나만 선택 되게 하려면 name값이 같아야함 -->
		여<input type="radio" name="gender" value="f"/>
		남<input type="radio" name="gender" value="m" checked="checked"/>
		<br/><br/>
		
		취미:
		코딩<input type="checkbox" name="hobby" value="codinf"/>
		술<input type="checkbox" name="hobby" value="dog"/>
		요리<input type="checkbox" name="hobby" value="cooking"/>
		먹기<input type="checkbox" name="hobby" value="eat"/>
		<br/><br/>
		
		<input type="submit" value="회원가입" style="background: blue; color: white; height: 80px; width: 80px; font-size: 18px; border-radius: 50%"/>
		
	</form>
</body>
</html>
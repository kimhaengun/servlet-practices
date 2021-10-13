<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 출력</h1>
	${iVal }<br/>
	${lVal }<br/>
	${fVal }<br/>
	${bVal }<br/>
	${sVal }<br/>
	<h1>객체출력</h1>
	==${obj }==<br/>
	${vo.no }<br/>
	${vo.name }<br/>
	<h1>map</h1>
	${map.ival }<br/>
	${map.lval }<br/>
		${map.fval }<br/>
			${map.bval }<br/>
				
	<h1>산술연산</h1>
	2+5=${2+5 }<br/>
	2*5=${2*5 }<br/>
	3/3=${3/3 }<br/>
	<h1>관계연산</h1>
	${iVal==10 }<br/>
	${iVal < 5 }<br/>
	${obj == null}<br/>
	${empty obj }<br/>
	${obj != null}<br/>
	${not empty obj }<br/>
	<h1>논리연산</h1>
	${iVal ==10 && lVal < 100}<br/>
	${iVal ==10 || lVal <100}<br/>
	<h1>요청파라메터</h1>
	==${param.a }==<br/>
	==${param.email }==<br/>
</body>
</html>
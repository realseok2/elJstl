<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 표현언어</title>
</head>
<body>

	UserVO userVo = new UserVo(1, "강동원", "Kang", "1234", "male");<br>
	request.setAttribute("userVo", userVo); <br>
	request.setAttribute("num", 1); <br>
	request.setAttribute("str", "하이"); <br>
	<br>
	
	<h2>attribute값 사용하기</h2>
	
	<h4>자바스클립틀릿에서 사용방법</h4>
	
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
	%>
	
	name		=		<%=userVo.getName() %><br>
	password	=		<%=userVo.getPassword() %><br>
	gender		=	 	<%=userVo.getGender() %><br>
	
	num			=		<%=num %><br>
	str			=		<%=request.getAttribute("str") %><br>
	<br>
	
	
	
	<h4>el에서의 사용방법</h4>
	
	name		=	${requestScope.userVo.name }<br>
	password	=	${requserScope.userVo.password }<br>
	gender		=	${requestScope.userVo.gender }<br>

	num			=	${requestScope.num }<br>
	
	str			=	${requestScope.str }<br>
	
	
	
	
	
	name		=	${userVo.name }<br>
	password	=	${userVo.password }<br>
	gender		=	${userVo.gender }<br>

	num			=	${num }<br>
	
	str			=	${str }<br>
		
		
		
		
		
</body>
</html>
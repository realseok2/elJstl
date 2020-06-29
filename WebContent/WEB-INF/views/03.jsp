<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터값사용</title>
</head>
<body>

	<!-- localhost:8088/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=20 -->
	
	<h3>자바스클립틀릿 파라미터 사용</h3>
	
	<h5>자바스클립틀릿</h5>
	id		=	<%=request.getParameter("id") %><br>
	pw		=	<%=request.getParameter("pw") %><br>
	name	=	<%=request.getParameter("name") %><br>
	num1	=	<%=request.getParameter("num1") %><br>
	num2	=	<%=request.getParameter("num2") %><br>
	sum		=	<%=request.getParameter("num1") + request.getParameter("num2") %><br>
	
	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	sum = <%=num1 + num2 %>
	
	<h3>el 파라미터값 사용</h3>

	id		=	${param.id }<br>
	pw		=	${param.pw }<br>
	name	=	${param.name }<br>
	num1	=	${param.num1 }<br>
	num2	=	${param.num2 }<br>
	sum		=	${param.num1 + param.num2 }<br>
	sum		=	${param.num1} + ${param.num2 }<br>













</body>
</html>
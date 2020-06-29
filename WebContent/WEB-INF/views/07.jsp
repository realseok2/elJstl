<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "app name");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>범주 우선순위</title>
</head>
<body>

	<h3>범주 우선순위</h3>

	<h5>자바스클립틀릿</h5>
	page name			=	<%=pageContext.getAttribute("name") %><br>
	request name		=	<%=request.getAttribute("name") %><br>
	session name		=	<%=session.getAttribute("name") %><br>
	application name	=	<%=application.getAttribute("name") %><br>
	
	<br><br><br><br><br>
	
	<h5>el</h5>
	page name			=	${pageScope.name } <br>
	request name		=	${requestScope.name } <br>
	session name		=	${sessionScope.name } <br>
	application name	=	${applicationScope.name } <br>
	
	
</body>
</html>
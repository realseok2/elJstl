<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border = "1">
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
			<td>status.index</td>
			<td>status.count</td>
		</tr>
		<%-- <%for(UserVo vo : list) { %> --%>
		
		
		<c:forEach items="${requestScope.userList}" var="userVo" varStatus="status">
		<tr>
			<td>${userVo.no }</td>
			<td>${userVo.name }</td>
			<td>${userVo.email }</td>
			<td>${status.index }</td>
			<td>${status.count }</td>
			
		</tr>
		</c:forEach>
		<%-- <% } %> --%>
		
	</table>





</body>
</html>
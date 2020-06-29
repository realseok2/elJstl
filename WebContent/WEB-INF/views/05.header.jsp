<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>

<!-- mySite2에서 header부분 session값 처리 방법 -->

UserVo userVo = new UserVo(1, "박명수", "park", "1234", "male");

HttpSession session = request.getSession(true);
session.setAttribute("authUser", userVo);

<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
%>

<div id="header">
	<h1>MySite</h1>
	<ul>
		<%
			if (authUser == null) {
		%>
		<!-- 로그인 전 -->
		<li><a href="/mysite/user?a=loginform">로그인</a></li>
		<li><a href="/mysite/user?a=joinform">회원가입</a></li>
		<%
			} else {
		%>
		<!-- 로그인 후 -->
		<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
		<li><a href="/mysite/user?a=logout">로그아웃</a></li>
		<li><%=authUser.getName()%>님 안녕하세요^^;</li>
		<%
			}
		%>
	</ul>
</div>
<!-- /header -->





<br><br><br><br><br>




<p3>el방식으로 코드작성</p3>

<div id="header">
	<h1>MySite</h1>
	<ul>
		<%
			if (authUser == null) {
		%>
		<!-- 로그인 전 -->
		<li><a href="/mysite/user?a=loginform">로그인</a></li>
		<li><a href="/mysite/user?a=joinform">회원가입</a></li>
		<%
			} else {
		%>
		<!-- 로그인 후 -->
		<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
		<li><a href="/mysite/user?a=logout">로그아웃</a></li>
		<li>${sessionScope.authUser.name }님 안녕하세요^^;</li>
		<li>${authUser.name }님 안녕하세요^^;</li>
		<%
			}
		%>
	</ul>
</div>
<!-- /header -->




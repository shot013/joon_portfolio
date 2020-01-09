<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header include입니다</title>
</head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/comUtils.js"></script>
<body>
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>메뉴</span></a>
		</nav>
		<a href="./" class="logo">Joon's PortFolio</a>
		<nav class="right">
			<c:choose>
			    <c:when test="${user_id eq '' || user_id eq null || empty user_id}">
			       	<li style="list-style:none;"><a href="./login" class="button alt">로그인</a></li>
			    </c:when>
			    <c:otherwise>
			        <li><a href="./logout/logoutUser">로그아웃</a></li>
			    </c:otherwise>
			</c:choose>
			
		</nav>
	</header>
</body>
</html>
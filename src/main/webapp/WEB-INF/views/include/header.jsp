<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<a href="#" class="button alt">로그인</a>
		</nav>
	</header>
</body>
</html>
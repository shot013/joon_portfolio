<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header include입니다</title>
</head>
<body>
	<nav id="menu">
		<ul class="links">
			<li><a href="./">메인으로</a></li>
			<c:choose>
			    <c:when test="${user_id eq '' || user_id eq null || empty user_id}">
			       	<li><a href="./reg">회원가입</a></li>
					<li><a href="./login">로그인</a></li>
			    </c:when>
			    <c:otherwise>
			        <li><a href="./logout/logoutUser">로그아웃</a></li>
			    </c:otherwise>
			</c:choose>
			<li><a href="./board">회원게시판</a></li>
		</ul>
	</nav>
</body>
<script>
$(function(){
	$('body').on('click', '#logout', function(){
		comUtil_requestAjax(info, '/logout');
		location.href='/JoonProfile';
	});
});
</script>
</html>
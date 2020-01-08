<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 페이지입니다!</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
</head>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/login.js"></script>
<body>
	<!-- Banner -->
	<section id="banner">
		<div class="content">
			<form method="post" action="#">
				<div class="row uniform">
					<div class="12u$">
						<h3>로그인</h3>
					</div>
					<!-- Break -->
					<div class="12u$">
						<div class="6u 12u$(xsmall)" style="margin : auto;">
							<input type="text" name="user_id" id="user_id" value="" placeholder="아이디를 입력해주세요" />
						</div>
					</div>
					<div class="12u$">
						<div class="6u 12u$(xsmall)" style="margin : auto;">
							<input type="password" name="user_pw" id="user_pw" value="" placeholder="비밀번호를 입력해주세요" />
						</div>
					</div>
				</div>
				<div class="row uniform" style="margin : auto;">
					<div class="12u$" style="padding-left:0px;">
						<ul class="action" style="list-style : none; padding-left:0px;">
							<li>
								<input type="reset" value="로그인" onClick="loginBtn()">
							</li>
						</ul>
					</div>
				</div>
			</form>
		</div>
	</section>
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>
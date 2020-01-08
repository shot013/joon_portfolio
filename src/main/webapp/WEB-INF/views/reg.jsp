<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 페이지 입니다!</title>
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
<script src="${pageContext.request.contextPath}/resources/assets/js/reg.js"></script>
<body>
	<!-- Banner -->
	<section id="banner">
		<div class="content">
			<h3>회원가입</h3>
			<hr />
				<form method="post" action="#">
					<div class="row uniform">
						<!-- ID -->
						<div class="12u$">
							<div class="6u 12u$(xsmall)" style="margin : auto;">
								<input type="text" name="user_id" id="user_id" value="" placeholder="아이디를 입력해주세요" />
							</div>
						</div>
						<!-- ID 중복체크 및 정합성검사 -->
						<div class="12u$" style="padding-top: 5px;">
							<ul style="list-style : none; padding-left:0px;">
								<li><input type="button" value="아이디 중복체크" class="button alt small" onClick="id_chk();"/></li>
							</ul>
						</div>
						
						<!-- PW -->
						<div class="12u$">
							<div class="6u 12u$(xsmall)" style="margin : auto;">
								<input type="password" name="user_pw" id="user_pw" value="" placeholder="비밀번호를 입력해주세요" />
							</div>
						</div>
						<!-- PW 정합성검사 msg창 -->
						<div class="12u$">
							<ul style="list-style : none; padding-left:0px;">
								<li id="pw_chk" style="color : red;"></li>
							</ul>
						</div>
						
						<!-- 이름 -->
						<div class="12u$">
							<div class="6u 12u$(xsmall)" style="margin : auto;">
								<input type="text" name="user_name" id="user_name" value="" placeholder="이름을 입력해주세요" />
							</div>
						</div>
						<!--  이름 정합성검사 msg창 -->
						<div class="12u$">
							<ul style="list-style : none; padding-left:0px;">
								<li id="name_chk"></li>
							</ul>
						</div>
						
						<!-- 이메일 -->
						<div class="12u$">
							<div class="6u 12u$(xsmall)" style="margin : auto;">
								<input type="email" name="user_email" id="user_email" value="" placeholder="email을 입력해주세요" />
							</div>
						</div>
						<!-- 이메일 정합성검사 msg창 -->
						<div class="12u$">
							<ul style="list-style : none; padding-left:0px;">
								<li id="email_chk"></li>
							</ul>
						</div>
						
						<!-- 전화번호 -->
						<div class="12u$">
							<div class="6u 12u$(xsmall)" style="margin : auto;">
								<input type="text" maxlength="11" name="user_hp" id="user_hp" value="" placeholder="휴대폰번호를 '-' 없이 입력해주세요" />
							</div>
						</div>
						<!-- 전화번호 정합성검사 msg창 -->
						<div class="12u$">
							<ul style="list-style : none; padding-left:0px;">
								<li id="hp_chk"></li>
							</ul>
						</div>
						
						<!-- Break -->
						<div class="12u$">
							<ul class="actions">
								<li><input id="regbtn" type="button" value="가입하기" onClick="reg_user()" /></li>
							</ul>
						</div>
					</div>
				</form>

				<hr />
		</div>
	</section>
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>
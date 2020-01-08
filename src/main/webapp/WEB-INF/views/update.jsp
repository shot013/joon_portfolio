<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Generic - Intensify by TEMPLATED</title>
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
<script src="${pageContext.request.contextPath}/resources/assets/js/update.js"></script>
<body>
	<!-- Banner -->
	<section id="banner">
		<div class="content">
			<h3>게시글 수정 </h3>
			<hr />
				<form method="post" action="#">
					<div class="row uniform">
						<!-- ID -->
						<div class="12u$">
							<div class="12u 12u$(xsmall)" style="margin : auto;">
								<input type="text" name="title" id="update_board_title" value="" placeholder="제목을 입력해주세요" />
							</div>
						</div>
						<div class="12u$">
							<div class="12u 12u$(xsmall)" style="margin : auto;">
								<textarea name="msg" id="update_board_msg" placeholder="내용을 입력해주세요" rows="6"></textarea>
							</div>
						</div>
						<!-- 작성버튼 -->
						<div class="12u$" style="padding-top: 5px;">
							<ul style="list-style : none; padding-left:0px;">
								<li><input type="button" value="수정" class="button alt small" onClick="updateBoard();"/></li>
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
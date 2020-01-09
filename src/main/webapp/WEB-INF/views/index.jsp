<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>메인 페이지입니다!</title>
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
<body>
	<!-- Banner -->
	<section id="banner">
		<div class="content">
			<h1>개발자 정원준의</h1><br/>
			<h1>포트폴리오 홈페이지입니다.</h1>
		</div>
	</section>

	<!-- One -->
	<section id="one" class="wrapper">
		<div class="inner flex flex-3">
			<div class="flex-item left">
				<div class="link_list">
					<div class="img fit" >
						<iframe src="">현재 작업중!</iframe>
					</div>
					<h3 class="main_portfolio_title">node.js 게시판페이지입니다.</h3>
					<p class="main_portfolio_title">현재  작업중인 상태입니다.</p>
					<p class="main_portfolio_title">작업중</p>
					<p>
						<a target="_blank" href="">GitHub 보시려면 클릭해주세요</a>
					</p>
				</div>
			</div>

			<div class="flex-item left">
				<div class="link_list">
					<div class="img fit" >
						<iframe src="https://drive.google.com/file/d/1_7CGScW7bzhAWZa0i8nRgHSad72nXf3z/preview"></iframe>
					</div>
					<h3 class="main_portfolio_title">현재 포트폴리오 홈페이지</h3>
					<p class="main_portfolio_title">현재  배포 상태입니다.</p>
					<p class="main_portfolio_title">http://13.209.69.97:8080/JoonProfile/</p>
					<p>
						<a target="_blank" href="https://github.com/shot013/joon_portfolio">GitHub 보시려면 클릭해주세요</a>
					</p>
				</div>
			</div>

			<div class="flex-item left">
				<div class="link_list">
					<div class="img fit" >
						<iframe src="https://drive.google.com/file/d/1xL1pS475xR2zjNmGSBEPzK5G_XlbbLlN/preview"></iframe>
					</div>
					<h3 class="main_portfolio_title">공유주방을 활용한 프로젝트</h3>
					<p class="main_portfolio_title">비용문제로 AWS에서 모두 내린 상태입니다.</p>
					<p class="main_portfolio_title">
						<a target="_blank" href="https://drive.google.com/file/d/1SzTMSwfMirGXqsNULnIeZ5xgc8G_5xVc/view">PPT 보시려면 클릭해주세요</a>
					</p>
					<p>
						<a target="_blank" href="https://github.com/shot013/CloudKitchen">GitHub 보시려면 클릭해주세요</a>
					</p>
				</div>
			</div>
		</div>
	</section>
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>
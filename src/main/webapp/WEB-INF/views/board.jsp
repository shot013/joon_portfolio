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
<script src="${pageContext.request.contextPath}/resources/assets/js/board.js"></script>
<body class="subpage">
	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">
			<header class="align-center">
				<h1>회원 게시판</h1>
				<p>자유롭게 글을 남겨주세요</p>
			</header>
		<!-- Table -->
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>게시번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정/삭제</th>
						</tr>
					</thead>
					<tbody id="board">
					</tbody>
					<tfoot>
						<tr>
							<td>
								<ul class="actions">
									<li><a href="./write" id="write" class="button" style="padding:0 1.5em;">글쓰기</a></li>
								</ul>
							</td>
							<td colspan="3">
								<input type="text" name="search_keyword" id="search_keyword" value="" placeholder="검색어를 입력해주세요" style="background-color:white;"/>
							</td>
							<td>
								<ul class="actions">
									<li><a href="javascript:void(0);" id="search_btn" class="button special icon fa-search" onClick="searchBoard();" style="padding-left: 2em; padding-right: 0.6em;"></a></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td colspan="5" id="page_area"></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</section>
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>
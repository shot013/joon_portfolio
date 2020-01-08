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
<script src="${pageContext.request.contextPath}/resources/assets/js/read.js"></script>
<body class="subpage">
	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">
			<header class="align-center">
				<h1>회원 게시판</h1>
				<hr />
				<p></p>
			</header>
		<!-- Table -->
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th id="cur_board_number">게시번호</th>
							<th id="cur_board_title">제목</th>
							<th id="cur_board_writer">작성자</th>
							<th id="cur_board_regdate">작성일</th>
						</tr>
					</thead>
					<!-- 게시물란 -->
					<tbody id="board">
						<tr>
							<td colspan="4">
								<textarea id="cur_board_msg" name="msg" id="msg" rows="4" readonly></textarea>
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
								<input type="text" id="comment_msg" value="" placeholder="댓글을 입력해주세요" style="background-color:white;"/>
							</td>
							<td width="15%">
								<ul class="actions">
									<li><a id="reg_comment" class="button alt small fit page">덧글작성</a></li>
								</ul>
							</td>
							<td width="15%">
								<ul class="actions">
									<li><a href="./board" class="button alt small fit page">목록</a></li>
								</ul>
							</td>
						</tr>
					</tfoot>
				</table>
				
				<table>
					<thead>
						<tr>
							<th width="10%"></th>
							<th width="15%"></th>
							<th width="40%"></th>
							<th width="15%"></th>
							<th width="20%"></th>
						</tr>
					</thead>
					<!-- 댓글란 -->
					<tbody id="comment_area">

					</tbody>
				</table>
			</div>
		</div>
	</section>
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</html>
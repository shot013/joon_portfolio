boardInfo = {};
boardInfo.page = '1'; // 첫페이지 1세팅
boardInfo.boardCnt = '';
boardInfo.maxPage = '';
boardInfo.select_board_number = '';
// 이벤트영역
$(function(){
	
	boardInfo.page = 1;
	getPage();
	getBoardList();
	
// 페이지 클릭 이벤트부여
	$('tfoot').on('click', '.page', function() {
		boardInfo.page = $(this).text();
		console.log(boardInfo);
		getBoardList();
	});
	
	$('body').on('click', '.board_row .title', function(){
		let cur_board_number = $(this).parent().children().eq(0).text();
		sessionStorage.setItem('cur_board_number', cur_board_number);
	});
	
	$('body').on('click', '.update_board', function(){
		let cur_board_number = $(this).parent().parent().children().eq(0).text();
		sessionStorage.setItem('cur_board_number', cur_board_number);
	});
	
	$('body').on('click', '.del_board', function(){
		let cur_board_number = $(this).parent().parent().children().eq(0).text();
		let cur_board_user_id = $(this).parent().parent().children().eq(2).text();
		sessionStorage.setItem('cur_board_number', cur_board_number);
		sessionStorage.setItem('cur_board_user_id', cur_board_user_id);
		deleteBoard();
	});
});

// 페이지 생성
function getPage() {
	$('.page').remove();
	boardInfo.boardCnt = comUtil_requestAjax(boardInfo, "/board/boardCnt");
	let page		= boardInfo.boardCnt/5;
	let ceilPage 	= Math.ceil(boardInfo.boardCnt/5);		// 페이지계산용 올림
	let floorPage 	= Math.floor(boardInfo.boardCnt/5); 	// 페이지계산용 버림
	if (page > floorPage) 	{ boardInfo.maxPage = ceilPage; }
	else					{ boardInfo.maxPage = page; }
	for (let i=1; i<boardInfo.maxPage+1; i++) {
		$('#page_area').append("<a class='button alt small page'>" + i + "</a>");
	}
}
// 게시물 가져오기
function getBoardList() {
	let $loginId = sessionStorage.getItem('user_id');
	$('.board_row').remove();
	boardList = comUtil_requestAjax(boardInfo, "/board/boardList");
	makeBoard(boardList);
}

function deleteBoard() {
	delBoardInfo = {};
	delBoardInfo.board_number = sessionStorage.getItem('cur_board_number');
	delBoardInfo.user_id = sessionStorage.getItem('cur_board_user_id');
	let success = comUtil_requestAjax(delBoardInfo, "/delete/deleteBoard");
	console.log(success);
	if (success == 1) {
		swal("삭제되었습니다.");
		$('.swal-button').on('click', function(){
			getPage();
			getBoardList();
		});
	} else {
		swal("다른 사람의 게시물입니다.");
	}
}

function searchBoard() {
	$('.board_row').remove();
	let search_keyword = $('#search_keyword').val();
	if (search_keyword != '') {
		searchInfo = {};
		searchInfo.search_keyword = search_keyword;
		let boardList = comUtil_requestAjax(searchInfo, "/search/searchBoard");
		makeBoard(boardList);
	} else {
		boardInfo.page = 1;
		getPage();
		getBoardList();
	}
	$('#search_keyword').val('');
}

function makeBoard(boardList){
	let $loginId = sessionStorage.getItem('user_id');
	for (let i=0; i<boardList.length; i++){
		if ($loginId == boardList[i].user_id) {
			$('#board').append(
					"<tr class='board_row'>"
					+"<td>"+ boardList[i].board_number +"</td>"
					+"<td class='title'><a href='./read'>"+ boardList[i].title +"</a></td>"
					+"<td>"+ boardList[i].user_id +"</td>"
					+"<td>"+ boardList[i].reg_date +"</td>"
					+"<td><a href='./update' class='update_board'>수정</a> / <a class='del_board'>삭제</a></td>"
					+"</tr>"
			);
		} else {
			$('#board').append(
					"<tr class='board_row'>"
					+"<td>"+ boardList[i].board_number +"</td>"
					+"<td class='title'><a href='./read'>"+ boardList[i].title +"</a></td>"
					+"<td>"+ boardList[i].user_id +"</td>"
					+"<td>"+ boardList[i].reg_date +"</td>"
					+"<td>변경불가</td>"
					+"</tr>"
			);
		}
	}
}

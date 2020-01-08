// 이벤트영역
$(function(){
	readBoard();
});
// 게시물 정보 읽어오기
function readBoard() {
	info = {};
	info.board_number = sessionStorage.getItem('cur_board_number');
	let boardInfo = comUtil_requestAjax(info, '/read/readBoard');
	console.log(boardInfo);
	$('#update_board_title').val(boardInfo.title);
	$('#update_board_msg').val(boardInfo.msg);
}

function updateBoard() {
	info = {};
	info.board_number = sessionStorage.getItem('cur_board_number');
	info.title 	= $('#update_board_title').val();
	info.msg 	= $('#update_board_msg').val();
	let success = comUtil_requestAjax(info, '/update/updateBoard');
	console.log(success);
	if (success == 1 ) {
		swal('변경 성공');
		$('.swal-button').on('click', function(){
			location.href='board'
		});
		
	} else {
		swal('업데이트에 실패하였습니다. 다른유저의 게시물입니다.');
	}
}
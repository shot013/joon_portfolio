// 이벤트영역
$(function(){
	
});

function writeBoard() {
	let title 	= $('#title').val();
	let msg		= $('#msg').val();
	
	if (title == '') {
		return swal("제목을 입력해주세요.");
	} else if (msg == '') {
		return swal("내용을 입력해주세요.");
	}
	board = {};
	board.title = title;
	board.msg 	= msg;
	
	let success = comUtil_requestAjax(board, '/write/writeBoard');
	if (success == 1) {
		swal("작성되었습니다.");
		$('.swal-button').on('click', function(){
//			location.href='/JoonProfile/board';
			location.href='./board';
		});
	} else {
		swal("잠시 후 다시 시도해주세요");
	}
}
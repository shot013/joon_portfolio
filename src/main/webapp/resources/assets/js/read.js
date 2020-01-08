commentInfo = {};

// 이벤트영역
$(function(){
	readBoard();
	readComment();
	
	$('#reg_comment').on('click', function(){
		writeComment();
	});
	
	$('.comment_del').on('click', function(){
		commentInfo.cur_comment_number = $(this).parent().parent().children().eq(0).text();
		commentInfo.cur_board_number = $('#cur_board_number').text();
		let cnt = deleteComment();
		
		if (cnt == 1) {
			$(this).parent().parent().remove();
		}
	});
});

function readBoard() {
	info = {};
	info.board_number = sessionStorage.getItem('cur_board_number');
	let boardInfo = comUtil_requestAjax(info, '/read/readBoard');
	console.log(boardInfo);
	$('#cur_board_number').text(boardInfo.board_number);
	$('#cur_board_title').text("제목 : "+boardInfo.title);
	$('#cur_board_writer').text("작성자 : " + boardInfo.user_id);
	$('#cur_board_regdate').text("작성일 : " + boardInfo.reg_date);
	$('#cur_board_msg').val(boardInfo.msg);
}

function readComment() {
	$('.no_comment').remove();
	let $logId = sessionStorage.getItem('user_id');
	info = {};
	info.board_number = sessionStorage.getItem('cur_board_number');
	let commentInfo = comUtil_requestAjax(info, '/read/readComment');
	if (commentInfo == null || commentInfo.length == 0) {
		$('#comment_area').append(
			'<tr class="no_comment">'
				+'<td colspan="5">덧글이 없습니다</td>'
			+'</tr>'
		);
	} else {
		for (let i=0; i<commentInfo.length; i++) {
			if ($logId == commentInfo[i].user_id) {
				$('#comment_area').append(
						'<tr>'
							+'<td class="comment_number">' + commentInfo[i].comment_number + '</td>'
							+'<td class="comment_writer">' + commentInfo[i].user_id + '</td>'
							+'<td class="comment_msg" colspan="2" style="text-align:left;">' + commentInfo[i].msg + '</td>'
							+'<td><a class="comment_del">삭제</a></td>'
						+'</tr>'
				);
			} else {
				$('#comment_area').append(
						'<tr>'
							+'<td class="comment_number">' + commentInfo[i].comment_number + '</td>'
							+'<td class="comment_writer">' + commentInfo[i].user_id + '</td>'
							+'<td class="comment_msg" colspan="2" style="text-align:left;">' + commentInfo[i].msg + '</td>'
							+'<td>변경불가</td>'
						+'</tr>'
				);
			}
		}
	}
}

function writeComment() {
	commentInfo = {};
	commentInfo.board_number = $('#cur_board_number').text();
	commentInfo.msg = $('#comment_msg').val();
	let success = comUtil_requestAjax(commentInfo, '/reg/regComment');
	
	if (success != 0) {
		swal("등록되었습니다.");
		$('.no_comment').remove();
		$('.swal-button').on('click', function(){
			$('#comment_area').append(
					'<tr>'
						+'<td class="comment_number">' + success + '</td>'
						+'<td class="comment_writer">' + sessionStorage.getItem('user_id') + '</td>'
						+'<td class="comment_msg" colspan="2" style="text-align:left;">' + commentInfo.msg + '</td>'
						+'<td><a class="comment_del">삭제</a></td>'
					+'</tr>'
			);
		});
	} else if(sessionStorage.getItem('cur_board_user_id') == null || sessionStorage.getItem('cur_board_user_id') == ''){
		swal("세션이 만료되었습니다.");
		location.href='/login';
	}
	
}

function deleteComment(){
	info = {};
	info.comment_number = commentInfo.cur_comment_number;
	info.board_number   = commentInfo.cur_board_number;
	
	let success = comUtil_requestAjax(info, '/del/delComment');
	
	if (success == 1) {
		swal("삭제되었습니다.");
		return 1;
	}
	return 0;
}
// 이벤트영역
$(function(){
	
});

function loginBtn() {
	let $user_id = $('#user_id').val();
	let $user_pw = $('#user_pw').val();

	if (comUtil_chk_id($user_id) || comUtil_chk_length_id($user_id)) {
		return swal("아이디 형식이 맞지 않습니다.");
	} else if (comUtil_chk_pw($user_pw) == 0) {
		return swal("비밀번호는 8자리 이상입니다.");
	}
	userInfo = {};
	userInfo.user_id = $user_id;
	userInfo.user_pw = $user_pw;
	
	let success = comUtil_requestAjax(userInfo, "/login/loginUser");

	if (success == 1) {
		sessionStorage.setItem('user_id', $user_id);
		swal($user_id + "님 로그인 되었습니다.");
		$('.swal-button').on('click', function(){
			location.href='./';
		});
	} else {
		swal("아이디와 비밀번호를 확인해주세요.");
	}
}
// 정합성 검사용
var consistency_id		= false;
var consistency_pw		= false;
var consistency_name	= false;
var consistency_email	= false;
var consistency_phone	= false;

// 이벤트영역
$(function(){
	// 휴대폰번호 숫자만 검사
	$('#user_hp').on('keyup', function(){
		let regExp = /[a-zA-Zㄱ-ㅎ|ㅏ-ㅣ|가-힣\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		let text = $('#user_hp').val().replace(regExp, "");
		$('#user_hp').val(text);
	});	
	// 휴대폰번호 자리수 정합성검사
	$('#user_hp').blur(function(){
		let user_hp = $('#user_hp').val();
		if (user_hp.length >= 10 && user_hp.length <= 11) 	{
			$('#hp_chk').css("color", "green");
			$('#hp_chk').text("확인되었습니다."); 
			consistency_phone = true; 
		} else { 
			$('#hp_chk').css("color", "red");
			$('#hp_chk').text("휴대폰번호를 확인해주세요"); 
			consistency_phone = false;
		}
	});	
	
	// 이메일 정합성검사
	$('#user_email').blur(function(){
		let user_email = $('#user_email').val();
		if (comUtil_chk_email(user_email) == false) {
			$('#email_chk').css("color", "red");
			$('#email_chk').text("이메일을 확인해주세요.");
		} else if (comUtil_chk_length_email(user_email) == true){
			$('#email_chk').css("color", "red");
			$('#email_chk').text("이메일을 확인해주세요.");
			consistency_email = false;
		} else if (comUtil_chk_at_email(user_email) == false) {
			$('#email_chk').css("color", "red");
			$('#email_chk').text("이메일 형식을 확인해주세요.");
			consistency_email = false;
		} else {
			$('#email_chk').css("color", "green");
			$('#email_chk').text("확인되었습니다."); 
			consistency_email = true;
		}
	});	
	
	// 이름 정합성검사
	$('#user_name').blur(function(){
		let user_name = $('#user_name').val();
		if (comUtil_chk_name(user_name) == true) 	{
			$('#name_chk').css("color", "red");
			$('#name_chk').text("이름에 특수문자 및 숫자를 사용하실 수 없습니다.");
			consistency_name = false;
		} else if (comUtil_chk_length_name(user_name) == true){
			$('#name_chk').css("color", "red");
			$('#name_chk').text("이름은 2자리 이상으로 입력해주세요.");
			consistency_name = false;
		} else {
			$('#name_chk').css("color", "green");
			$('#name_chk').text("확인되었습니다.");
			consistency_name = true;
		}
	});	
	
	// 비밀번호 정합성
	$('#user_pw').blur(function(){
		let user_pw = $('#user_pw').val();
		let chk_pw = comUtil_chk_pw(user_pw);
		if (chk_pw == '0') 	{
			$('#pw_chk').css("color", "red");
			$('#pw_chk').text("비밀번호는 8자리 이상으로 사용해주세요.");
			consistency_pw = false;
		} else {
			$('#pw_chk').css("color", "green");
			$('#pw_chk').text("사용하실 수 있는 비밀번호입니다."); 
			consistency_pw = true;
		}
	});
});

function id_chk() {
	let user_id = $('#user_id').val();
	if 		(comUtil_chk_id(user_id) == true) 		{ return swal("아이디에 특수문자 및 띄어쓰기를 사용하실 수 없습니다.", "", "error"); }
	else if (comUtil_chk_length_id(user_id) == true){ return swal("아이디는 6자리 이상으로 해주세요.", "", "error"); }
	// 유저입력정보
	let info = {};
	info.user_id = $('#user_id').val();
	
	let chk_cnt = comUtil_requestAjax(info, "/reg/chkId");
	if (chk_cnt == '0') { 
		swal("사용가능한 아이디입니다", "", "success"); 
		consistency_id = true;
	} else { 
		swal("중복된 아이디입니다.", "", "error"); 
		consistency_id = false;
	}
}

function reg_user() {
	if (!consistency_id) {
		return swal("아이디 중복체크 및 확인하세요.");
	} else if (!consistency_pw) {
		return swal("비밀번호를 확인해 주세요.");
	} else if (!consistency_name) {
		return swal("이름을 확인해 주세요.");
	} else if (!consistency_email) {
		return swal("이메일을 확인해 주세요.");
	} else if (!consistency_phone) {
		return swal("휴대폰번호를 확인해 주세요.");
	}
	
	let userInfo 	= {};
	userInfo.user_id 	= $('#user_id').val();
	userInfo.user_pw 	= $('#user_pw').val();
	userInfo.user_name 	= $('#user_name').val();
	userInfo.user_email = $('#user_email').val();
	userInfo.user_phone = $('#user_hp').val();
	
	let cnt = comUtil_requestAjax(userInfo, "/reg/regUser");
	
	if (cnt == '1') {
		swal("정상적으로 가입되었습니다. 확인을 누르면 메인페이지로 이동합니다.");
		consistency_id		= false;
		consistency_pw		= false;
		consistency_name	= false;
		consistency_email	= false;
		consistency_phone	= false;
		$('.swal-button').on('click', function(){
			location.href='./';
		});
	} else {
		swal("예상치못한 오류입니다. 잠시 후 다시 시도해주세요"); 
	}
	
}
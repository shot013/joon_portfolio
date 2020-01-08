// 공백검사
function isBlank(text) {
	return text.indexOf(" ");
}

// 아이디 특수문자 정합성
function comUtil_chk_id(id) {
	let regExp = /[\{\}\[\]\/?.,;:|\)*~`!!^\-_+<>@\#$%&\\\=\(\'\"]/;
	return regExp.test(id);
}
//아이디 길이 정합성
function comUtil_chk_length_id(id) {
	if (id.length < 6) 	{ return true; }
	else 				{ return false; }
}
// 비밀번호 정합성
function comUtil_chk_pw(pw) {
	if (pw.length >= 8) { // 8자리 이상인경우
		return 1;
	} else { // 아닌경우
		return 0;
	}
}
//이름 특수문자 정합성
function comUtil_chk_name(name) {
	let regExp = /[0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/;
	return regExp.test(name);
}
//이름 길이 정합성
function comUtil_chk_length_name(name) {
	if (name.length <= 2) 	{ return true; }
	else 					{ return false; }
}

//이메일 특수문자 정합성
function comUtil_chk_email(email) {
	let regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>\#$%&\\\=\(\'\"]/;
	return regExp.test(email);
}
//이메일 길이 정합성
function comUtil_chk_length_email(email) {
	let bef_chk_email = email.split('@')[0];
	let aft_chk_email = email.split('@')[1];
	if (bef_chk_email.length <= 4 && aft_chk_email <=6) { return true; }
	else 												{ return false; }
}
//이메일 @ 정합성
function comUtil_chk_at_email(email) {
	let regExp = /[@.]/;
	return regExp.test(email);
}
function comUtil_requestAjax(info, url) {
	var chk_cnt; // data 전역변수에 담기
	console.log(JSON.stringify(info));
	$.ajax({
		url : "/JoonProfile" + url,
		method : "POST",
		data : JSON.stringify(info),
		dataType : "json",
		contentType: "application/json; charset=UTF-8",
		async:false,
		success : function(data) {
			chk_cnt = data;
			console.log(chk_cnt);
		},
		error : function(data, status, error) {
			console.log(data);
		}
	});
	return chk_cnt;
}

function com_alert() { alert("success"); }
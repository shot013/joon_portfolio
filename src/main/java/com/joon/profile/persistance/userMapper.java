package com.joon.profile.persistance;

import org.mybatis.spring.annotation.MapperScan;

import com.joon.profile.dao.userDAO;

@MapperScan
public interface userMapper {
	public int	 	regUser(userDAO userInfo); // 회원가입
	public int	 	loginUser(userDAO userInfo); // 로그인
	public String 	secUser(userDAO userInfo); // 회원탈퇴
	public String 	chkId(String userId); // 아이디 중복체크
	public String 	findUserId(String user_email); // ID찾기
	public String 	changeUserPw(String user_pw); // PW변경
	public String 	changeUserHp(String user_phone); // 휴대폰번호변경
}

package com.joon.profile.serviceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joon.profile.dao.userDAO;
import com.joon.profile.persistance.userMapper;

@Transactional
@Service
public class userServiceImpl implements userService {
	@Autowired
	private userMapper mapper;

	@Override
	public int loginUser(userDAO userInfo, HttpServletRequest request) {
		int loginChk = mapper.loginUser(userInfo);
		if (loginChk == 1) {
			HttpSession session = request.getSession(false);
			session.setAttribute("user_id", userInfo.getUser_id());
		}
		return loginChk;
	}

	@Override
	public void logoutUser(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		session.setAttribute("user_id", "");
	}
	
	@Override
	public int regUser(userDAO userInfo) {
		return mapper.regUser(userInfo);
	}

	@Override
	public String secUser(userDAO userInfo) {
		// TODO Auto-generated method stub
		return "";
	}

	@Override
	public String chkId(String userId) {
		return mapper.chkId(userId);
	}

	@Override
	public String findUserId(String user_email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String changeUserPw(String user_pw) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String changeUserHp(String user_phone) {
		// TODO Auto-generated method stub
		return null;
	}

}

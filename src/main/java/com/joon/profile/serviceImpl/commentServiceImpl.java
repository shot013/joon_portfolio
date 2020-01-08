package com.joon.profile.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joon.profile.dao.boardDAO;
import com.joon.profile.dao.commentDAO;
import com.joon.profile.persistance.boardMapper;
import com.joon.profile.persistance.commentMapper;
import com.joon.profile.utils.pageMaker;

@Service
@Transactional
public class commentServiceImpl implements commentService {
	@Autowired
	private commentMapper mapper;

	@Override
	public List<commentDAO> commentList(commentDAO commentInfo) {
		return mapper.commentList(commentInfo);
	}

	@Override
	public int regComment(commentDAO commentInfo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		commentInfo.setUser_id((String) session.getAttribute("user_id")); 
		mapper.regComment(commentInfo);
		int last_comment_number = commentInfo.getComment_number();
		return last_comment_number;
	}

	@Override
	public int delComment(commentDAO commentInfo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		commentInfo.setUser_id((String) session.getAttribute("user_id")); 
		return mapper.delComment(commentInfo);
	}
}

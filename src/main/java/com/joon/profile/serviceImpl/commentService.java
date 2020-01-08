package com.joon.profile.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.joon.profile.dao.boardDAO;
import com.joon.profile.dao.commentDAO;

public interface commentService {
	public List<commentDAO> commentList(commentDAO commentInfo);
	public int				regComment(commentDAO commentInfo, HttpServletRequest request);
	public int				delComment(commentDAO commentInfo, HttpServletRequest request);
}

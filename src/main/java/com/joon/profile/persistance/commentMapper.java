package com.joon.profile.persistance;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.joon.profile.dao.commentDAO;

@MapperScan
public interface commentMapper {
	public List<commentDAO> commentList(commentDAO commentInfo);
	public int				regComment(commentDAO commentInfo);
	public int				delComment(commentDAO commentInfo);
}

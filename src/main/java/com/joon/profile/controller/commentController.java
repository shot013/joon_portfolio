package com.joon.profile.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joon.profile.dao.commentDAO;
import com.joon.profile.serviceImpl.commentServiceImpl;

@RestController
@RequestMapping(value="/")
public class commentController {
	@Autowired
	private commentServiceImpl service;
	
	@RequestMapping(value="read/readComment")
	public List<commentDAO> readComment(@RequestBody commentDAO commentInfo) {
		return service.commentList(commentInfo);
	}
	
	@RequestMapping(value="reg/regComment")
	public int regComment(@RequestBody commentDAO commentInfo, HttpServletRequest request) {
		return service.regComment(commentInfo, request);
	}
	
	@RequestMapping(value="del/delComment")
	public int delComment(@RequestBody commentDAO commentInfo, HttpServletRequest request) {
		return service.delComment(commentInfo, request);
	}
}

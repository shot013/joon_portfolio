package com.joon.profile.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joon.profile.dao.boardDAO;
import com.joon.profile.serviceImpl.boardServiceImpl;

@RestController
@RequestMapping(value="/")
public class boardController {
	@Autowired
	private boardServiceImpl service;
	// 게시글 전체갯수
	@PostMapping(value="board/boardCnt")
	public int boardCnt() {
		return service.regCnt();
	}
	// 게시글 가져오기
	@PostMapping(value="board/boardList")
	public List<boardDAO> boardPost(@RequestBody boardDAO boardInfo) {
		return service.boardList(boardInfo);
	}
	// 게시글 쓰기
	@PostMapping(value="write/writeBoard")
	public int writeBoard(@RequestBody boardDAO boardInfo, HttpServletRequest request) {
		return service.regBoard(boardInfo, request);
	}
	// 게시글 삭제
	@PostMapping(value="delete/deleteBoard")
	public int deleteBoard(@RequestBody boardDAO boardInfo, HttpServletRequest request) {
		return service.delBoard(boardInfo, request);
	}
	// 게시글 수정
	@PostMapping(value="update/updateBoard")
	public int updateBoard(@RequestBody boardDAO boardInfo, HttpServletRequest request) {
		System.out.println(boardInfo);
		return service.updBoard(boardInfo, request);
	}
	// 게시글 읽기
	@PostMapping(value="read/readBoard")
	public boardDAO readBoard(@RequestBody boardDAO boardInfo, HttpServletResponse response) {
		return service.readBoard(boardInfo, response);
	}
	
	// 게시글 읽기
	@PostMapping(value="search/searchBoard")
	public List<boardDAO> searchBoard(@RequestBody Map<String, String> search_keyword) {
		return service.searchBoard(search_keyword);
	}
}

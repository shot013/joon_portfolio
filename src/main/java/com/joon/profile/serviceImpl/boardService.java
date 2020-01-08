package com.joon.profile.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.joon.profile.dao.boardDAO;

public interface boardService {
	public List<boardDAO> 	boardList(boardDAO boardInfo);
	public int 				regCnt  ();
	public int 				regBoard(boardDAO boardInfo, HttpServletRequest request);
	public boardDAO 		readBoard(boardDAO boardInfo, HttpServletResponse response);
	public int 				delBoard(boardDAO boardInfo, HttpServletRequest request);
	public int 				updBoard(boardDAO boardInfo, HttpServletRequest request);
	public List<boardDAO>	searchBoard(Map<String, String> search_keyword);
}

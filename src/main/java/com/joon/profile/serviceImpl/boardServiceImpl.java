package com.joon.profile.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joon.profile.dao.boardDAO;
import com.joon.profile.persistance.boardMapper;
import com.joon.profile.utils.pageMaker;

@Service
@Transactional
public class boardServiceImpl implements boardService {
	@Autowired
	private boardMapper mapper;

	@Override
	public List<boardDAO> boardList(boardDAO boardInfo) {
		pageMaker pm = new pageMaker(boardInfo.page);
		boardInfo.setPage(pm.getPage());
		return mapper.boardList(boardInfo);
	}

	@Override
	public int regCnt() {
		return mapper.regCnt();
	}

	@Override
	public int regBoard(boardDAO boardInfo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		boardInfo.setUser_id((String) session.getAttribute("user_id"));
		return mapper.regBoard(boardInfo);
	}

	@Override
	public int delBoard(boardDAO boardInfo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		boardInfo.user_id = (String) session.getAttribute("user_id");
		System.out.println("게시물 삭제 세션 board객체   :: " + boardInfo);
		return mapper.delBoard(boardInfo);
	}

	@Override
	public int updBoard(boardDAO boardInfo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		boardInfo.setUser_id((String) session.getAttribute("user_id"));
		return mapper.updBoard(boardInfo);
	}

	@Override
	public boardDAO readBoard(boardDAO boardInfo, HttpServletResponse response) {
		return mapper.readBoard(boardInfo);
	}

	@Override
	public List<boardDAO> searchBoard(Map<String, String> search_keyword) {
		System.out.println((String) search_keyword.get("search_keyword"));
		String[] search_split 	= ((String) search_keyword.get("search_keyword")).split(" ");
		String 	 search_sql 	= "";
		
		if (search_split.length > 0) {
			for (int idx=0; idx<search_split.length; idx++) {
				if (idx==0) { search_sql += "WHERE "; }
				else 		{ search_sql += "AND "; }
				search_sql += "CONCAT(title, msg, user_id) LIKE '%" + search_split[idx] + "%'";
			}
		}
		
		search_keyword.put("search_keyword", search_sql);
		return mapper.searchBoard(search_keyword);
	}

}

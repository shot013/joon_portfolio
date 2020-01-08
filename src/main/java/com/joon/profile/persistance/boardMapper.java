package com.joon.profile.persistance;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.joon.profile.dao.boardDAO;

@MapperScan
public interface boardMapper {
	public List<boardDAO> 	boardList(boardDAO boardInfo);
	public int 				regCnt  ();
	public int 				regBoard(boardDAO boardInfo);
	public boardDAO 		readBoard(boardDAO boardInfo);
	public int 				delBoard(boardDAO boardInfo);
	public int 				updBoard(boardDAO boardInfo);
	public List<boardDAO>	searchBoard(Map<String, String> search_keyword);
}

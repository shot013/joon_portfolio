package com.joon.profile.dao;
// 회원 DAO
public class boardDAO {
	public int 	  board_number;
	public String title;
	public String msg;
	public String reg_date;
	public String user_id;
	public int	  page;
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "boardDAO [board_number=" + board_number + ", title=" + title + ", msg=" + msg + ", reg_date=" + reg_date
				+ ", user_id=" + user_id + ", page=" + page + "]";
	}
}

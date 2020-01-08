package com.joon.profile.dao;
// 회원 DAO
public class commentDAO {
	public int 		comment_number;
	public String 	msg;
	public String	reg_date;
	public String	user_id;
	public String	board_number;
	public int getComment_number() {
		return comment_number;
	}
	public void setComment_number(int comment_number) {
		this.comment_number = comment_number;
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
	public String getBoard_number() {
		return board_number;
	}
	public void setBoard_number(String board_number) {
		this.board_number = board_number;
	}
	@Override
	public String toString() {
		return "commentDAO [comment_number=" + comment_number + ", msg=" + msg + ", reg_date=" + reg_date + ", user_id="
				+ user_id + ", board_number=" + board_number + "]";
	}
}

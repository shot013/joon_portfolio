package com.joon.profile.dao;
// 회원 DAO
public class userDAO {
	public String user_id; // 회원id
	public String user_pw; // 회원pw
	public String user_name; // 회원이름
	public String user_email; // 회원 email
	public String user_phone; // 회원 휴대폰번호
	
	public String getUser_id() 				{ return this.user_id; 		}
	public String getUser_pw() 				{ return this.user_pw;		}
	public String getUser_name() 			{ return this.user_name;		}
	public String getUser_email() 			{ return this.user_email;	}
	public String getUser_phone() 			{ return this.user_phone;	}
	
	public void setUser_id(String user_id) 		 { this.user_id = user_id;		 }
	public void setUser_pw(String user_pw) 		 { this.user_pw = user_pw;		 }
	public void setUser_name(String user_name) 	 { this.user_name = user_name;	 }
	public void setUser_email(String user_email) { this.user_email = user_email; }
	public void setUser_phone(String user_phone) { this.user_phone = user_phone; }
	
	@Override
	public String toString() {
		return "userDAO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_email="
				+ user_email + ", user_phone=" + user_phone + "]";
	}
	
}

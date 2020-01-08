package com.joon.profile.utils;

public class pageMaker {
	int page;

	public pageMaker(int page) {
		if ((page - 1) * 10 <= 0) 	{ this.page = 0; }
		else						{ this.page = (page - 1) * 5; }
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
}

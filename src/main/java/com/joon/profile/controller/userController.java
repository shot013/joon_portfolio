package com.joon.profile.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joon.profile.dao.userDAO;
import com.joon.profile.serviceImpl.userServiceImpl;

@RestController
@RequestMapping(value="/")
public class userController {
	@Autowired
	private userServiceImpl service;
	
	@PostMapping(value="reg/regUser")
	public String regUser(@RequestBody userDAO userInfo) {
		return String.valueOf(service.regUser(userInfo));
	}
	
	@PostMapping(value="reg/chkId")
	public String chkId(@RequestBody userDAO userInfo) {
		return service.chkId(userInfo.user_id);
	}
	
	@PostMapping(value="login/loginUser")
	public int login(@RequestBody userDAO userInfo, HttpServletRequest request) {
		return service.loginUser(userInfo, request);
	}
	
	@GetMapping(value="logout/logoutUser")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		service.logoutUser(request);
		response.sendRedirect("../");
	}
}

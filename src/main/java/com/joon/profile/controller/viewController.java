package com.joon.profile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class viewController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goIndex(ModelAndView mv) {
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView goLogin(ModelAndView mv) {
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public ModelAndView goReg(ModelAndView mv) {
		mv.setViewName("reg");
		return mv;
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public ModelAndView goBoard(ModelAndView mv) {
		mv.setViewName("board");
		return mv;
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public ModelAndView goWrite(ModelAndView mv) {
		mv.setViewName("write");
		return mv;
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public ModelAndView goRead(ModelAndView mv) {
		mv.setViewName("read");
		return mv;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goUpdate(ModelAndView mv) {
		mv.setViewName("update");
		return mv;
	}
	
	@RequestMapping(value = "/alertLogin", method = RequestMethod.GET)
	public ModelAndView goredirect(ModelAndView mv) {
		mv.setViewName("alertLogin");
		return mv;
	}
}

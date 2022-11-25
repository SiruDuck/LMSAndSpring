package com.yongmoon.lms;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.MemberVO;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session) {
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		
		if(vo == null)
			return "mainlogin";
		else
			return "index";
	}
	
	@RequestMapping(value = "/index")
	public String Login(HttpSession session) throws Exception {
		MemberVO vo =(MemberVO) session.getAttribute("loginInfo");
		if(vo == null)
			return "mainlogin";
		else
			return "index";
	}
	
	@RequestMapping("/welcom")
	public String welcome() {
		
		return "introduction/introduction";
	}

	
}

package com.yongmoon.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseController {

	@RequestMapping("list.co")	
	public String list() {
		
		return "course/list";
	}
	
	@RequestMapping("new.co")
	public String course() {
		
		return "course/new";
	}
	
	@RequestMapping("info.co")
	public String info() {
		
		return "course/info";
	}
	
	
}

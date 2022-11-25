package com.yongmoon.lms;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

@RestController
public class AndEqController {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	//비품 안드로이드 전용 컨트롤러
	
	@RequestMapping(value= "/eqlist", produces = "text/html;charset=utf-8")
	public String eqlist (String vo) {
		String json = new Gson().toJson(sql.selectList("member.equipment_list"));
		return json;
	}
	
	
}

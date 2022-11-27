package com.yongmoon.lms;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import equipment.EquipmentVO;

@RestController
public class AndEqController {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	//비품 안드로이드 전용 컨트롤러
	
	//리스트 전체 출력
	@RequestMapping(value= "/andeqlist", produces = "text/html;charset=utf-8")
	public String eqlist (String vo) {
		String json = new Gson().toJson(sql.selectList("member.equipment_list"));
		return json;
	}
	
	//리스트 수정요청
	@RequestMapping(value= "/andeqmodify", produces = "text/html;charset=utf-8")
	public void eqmodify (String vo) {
		System.out.println("eq리스트 수정요청");
		EquipmentVO modivo = new Gson().fromJson(vo, EquipmentVO.class);
		if(modivo != null) {
			System.out.println("Vo로 다시 변환");
			sql.update("member.equipment_modify",vo);
		}
		
		return; 
	}
	
	@RequestMapping(value= "/andeqdelete", produces = "text/html;charset=utf-8")
	public void eqdel(String equipment) {
		System.out.println("eq삭제 요청");
		sql.delete("member.equipment_delete",equipment);
		return;
	}
	
	
	
	
}

package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import lecture.LectureVO;
import member.MemberVO;
import score.ScoreDAO;
import score.ScoreVO;

@RestController
public class ScoreController {
	@Autowired private ScoreDAO dao;
	
	//교수화면 학생 성적 리스트조회
	@RequestMapping(value= "and_scoret_list.sc", produces = "text/html;charset=utf-8")
	public String and_scoret_list(String id) {
		List<ScoreVO> list = dao.lookup_list_for_teacher(id);
		
		return new Gson().toJson(list);
	}
	
	
	
	//안드 학생 성적 평균 조회
	@RequestMapping(value= "avg_teacher_and.sc", produces = "text/html;charset=utf-8")
	public String avg_teacher_and(String id) {
		List<ScoreVO> list = dao.avg_teacher_subject(id);
		return new Gson().toJson(list);
	}
	
	
	//안드 학생 성적 평균 조회
	@RequestMapping(value= "avg_sutdent_and.sc", produces = "text/html;charset=utf-8")
	public String avg_sutdent_and(String id) {
		ScoreVO list = dao.calc_avg(id);
		String avg = list.getAvgerage() +"";
		return avg;
	}
	
	
	//안드 학생 성적 리스트 조회
	@RequestMapping(value= "and_score_list.sc", produces = "text/html;charset=utf-8")
	public String and_teacher_stu(String id) {
		List<ScoreVO> list = dao.lookup_list(id);
		
		return new Gson().toJson(list);
	}
	
}

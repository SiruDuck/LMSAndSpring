package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import lecture.LectureDAO;
import lecture.LecturePageVO;
import lecture.LectureServiceImpl;
import lecture.LectureVO;
import member.MemberVO;

@Controller
public class LectureController {

	@Autowired private LectureDAO dao;
	@Autowired private LectureServiceImpl service;
	
	//강의 목록 조회
	@RequestMapping(value = "/list.lec", produces = "text/html;charset=utf-8")
	public String lecture_list(Model model, LecturePageVO page,  HttpSession session
				,LectureVO vo
			) {

		
		session.setAttribute("category", "lec");
		List<LectureVO> list = dao.lecture_list(vo);
		model.addAttribute("list", list);
		model.addAttribute("search", vo);
		//model.addAttribute("page", service.lecture_list(page)); 페이징처리하는건지..???2022/11/24:KYM
		
		return "lecture/list";
	}
	
	//교수 내 강의 목록
	@RequestMapping(value= "/teacher_lec_list.lec", produces = "text/html;charset=utf-8")
	public String teacher_lec_list(Model model, HttpSession session, String teacher_name) {
		MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
		session.setAttribute("category", "teacher_lec");

		List<LectureVO> list = dao.teacher_lec_list(vo.getName());
		model.addAttribute("vo", list);
		
		return "lecture/teacher_lec_list";
	}
	
	//학생 내 강의 목록
	@RequestMapping(value= "/student_lec_list.lec", produces = "text/html;charset=utf-8")
	public String student_lec_list(Model model, HttpSession session, String id) {
		MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
		session.setAttribute("category", "student_lec");

		List<LectureVO> list = dao.student_lec_list(vo.getId());
		model.addAttribute("vo", list);
		
		return "lecture/student_lec_list";
	}
	
	//교수-> 수강학생 조회
	@RequestMapping(value= "/teacher_stu.lec", produces = "text/html;charset=utf-8")
	public String teacher_stu(Model model, HttpSession session, int lecture_num) {
		//MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
		List<LectureVO> list = dao.teacher_stu(lecture_num);
		session.setAttribute("category", "teacher_stu");
		model.addAttribute("vo", list);
		
		
		return "lecture/teacher_stu";
	}
	
	
	//안드 강의목록 조회
	@ResponseBody @RequestMapping(value = "andlist.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_list() {
		List<LectureVO> list = service.lecture_list();
		return new Gson().toJson(list);
	}
	
	//강의 상세보기
	@RequestMapping(value = "/detail.lec", produces = "text/html;charset=utf-8")
	public String lecture_info(int lecture_num, Model model, HttpSession session) {
		LectureVO vo = dao.lecture_info(lecture_num);
		model.addAttribute("vo", vo);
		
		return "lecture/detail";
	}
	
	//안드 강의 상세보기
	@ResponseBody @RequestMapping(value = "anddetail.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_info(int lecture_num, Model model) {
		LectureVO vo = service.lecture_info(lecture_num);
		model.addAttribute("vo",vo);
		return new Gson().toJson(vo);
	}
	
	//강의 개설 화면 요청
	@RequestMapping(value = "/new.lec", produces = "text/html;charset=utf-8")
	public String lecture_new() {
		
		return "lecture/new";
	}
	
	//강의 개설 정보 저장 처리
	@RequestMapping(value=  "/insert.lec" , produces = "text/html;charset=utf-8")
	public String lecture_insert(LectureVO vo) {
		service.lecture_insert(vo);
		return "redirect:list.lec";
	}
	
	//강의 정보 수정 화면
	@RequestMapping(value= "/modify.lec" , produces = "text/html;charset=utf-8")
	public String lecture_modify(int lecture_num, Model model) {
		
		LectureVO vo = service.lecture_info(lecture_num);
		model.addAttribute("vo", vo);
		
		return "lecture/modify";
	}
	
	//강의 정보 수정 저장처리
	@RequestMapping(value= "/update.lec" , produces = "text/html;charset=utf-8")
	public String lecture_update(LectureVO vo) {
		service.lecture_update(vo);
		
		return "redirect:detail.lec?lecture_num="+ vo.getLecture_num();
	}
	
	//강의 정보 삭제
	@RequestMapping(value= "/delete.lec" , produces = "text/html;charset=utf-8")
	public String delete(int lecture_num) {
		service.lecture_delete(lecture_num);
		return "redirect:list.lec";
	}
	
	
	
	
	
	
}

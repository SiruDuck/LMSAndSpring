package com.yongmoon.lms;

import java.lang.reflect.Type;
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
import lecture.LectureVO;
import member.MemberVO;

@RestController
public class LectureController {

	@Autowired private LectureDAO dao;
	

//	//강의 목록 조회
//	@RequestMapping(value = "/list.lec", produces = "text/html;charset=utf-8")
//	public String lecture_list(Model model, LecturePageVO page,  HttpSession session
//				,LectureVO vo
//			) {
//
//		
//		session.setAttribute("category", "lec");
//		List<LectureVO> list = dao.lecture_list(vo);
//		model.addAttribute("list", list);
//		model.addAttribute("search", vo);
//		//model.addAttribute("page", service.lecture_list(page)); 페이징처리하는건지..???2022/11/24:KYM
//		
//		return "lecture/list";
//	}
	
//	//교수 내 강의 목록
//	@RequestMapping(value= "/teacher_lec_list.lec", produces = "text/html;charset=utf-8")
//	public String teacher_lec_list(Model model, HttpSession session, String teacher_name) {
//		MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
//		session.setAttribute("category", "teacher_lec");
//
//		List<LectureVO> list = dao.teacher_lec_list(vo.getName());
//		model.addAttribute("vo", list);
//		
//		return "lecture/teacher_lec_list";
//	}
	
	//안드 교수 내 강의 목록
	@RequestMapping(value= "and_teacher_lec_list.lec", produces = "text/html;charset=utf-8")
	public String and_teacher_lec_list(HttpSession session, Model model, String vo) {
		//MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
		System.out.println("요청들어옴"+vo);
		LectureVO vo2 = new Gson().fromJson(vo, LectureVO.class);
		
		List<LectureVO> list = dao.teacher_lec_list(vo2.getName());
		model.addAttribute("vo", list);
		
		return new Gson().toJson(list);
	}

	
	//안드 강의목록 조회
	@RequestMapping(value = "andlist.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_list() {
		List<LectureVO> list = dao.lecture_list();
		return new Gson().toJson(list);
	}
	
	//안드 강의 상세보기
	@RequestMapping(value = "anddetail.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_info(int lecture_num, Model model) {
		LectureVO vo = dao.lecture_info(lecture_num);
		model.addAttribute("vo",vo);
		return new Gson().toJson(vo);
	}
	
	//안드 강의 개설
	@RequestMapping(value = "andinsert.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_insert(LectureVO vo) {
		vo = dao.lecture_insert(vo);
		
		
		return "";
	}
	
	
	//안드 정보 수정
	@RequestMapping(value = "/andupdate.lec", produces = "text/html;charset=utf-8")
	public String AndLecture_update(String vo) {
		
		LectureVO dto = new Gson().fromJson(vo, LectureVO.class);
		dao.lecture_update(dto);
		return new Gson().toJson(dto);
	}
	
	//안드 강의 정보 삭제
	@RequestMapping(value= "/anddelete.lec" , produces = "text/html;charset=utf-8")
	public String delete(int lecture_num) {
		int result = dao.lecture_delete(lecture_num);
		
		
		return result+"";
	}
	
//	
//	//학생 내 강의 목록
//	@RequestMapping(value= "/student_lec_list.lec", produces = "text/html;charset=utf-8")
//	public String student_lec_list(Model model, HttpSession session, String id) {
//		MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
//		session.setAttribute("category", "student_lec");
//
//		List<LectureVO> list = dao.student_lec_list(vo.getId());
//		model.addAttribute("vo", list);
//		
//		return "lecture/student_lec_list";
//	}
//	
//	//교수-> 수강학생 조회
//	@RequestMapping(value= "/teacher_stu.lec", produces = "text/html;charset=utf-8")
//	public String teacher_stu(Model model, HttpSession session, int lecture_num) {
//		//MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
//		List<LectureVO> list = dao.teacher_stu(lecture_num);
//		session.setAttribute("category", "teacher_stu");
//		model.addAttribute("vo", list);
//		
//		
//		return "lecture/teacher_stu";
//	}
	
	
}

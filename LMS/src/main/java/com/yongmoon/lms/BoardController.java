package com.yongmoon.lms;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import board.BoardCommentVO;
import board.BoardServiceImpl;
import board.BoardVO;
import common.CommonUtility;
import notice.NoticePageVO;
import notice.NoticeVO;

@RestController
public class BoardController {
	@Autowired
	private BoardServiceImpl service;
	@Autowired
	private CommonUtility common;

	////////////////////////////////////////// 안드로이드/////////////////////////////////////////////////////////////

	@RequestMapping(value = "/bolist", produces = "text/html;charset=utf-8")
	public String board_and_list() {
		List<BoardVO> list = service.board_and_list();
		return new Gson().toJson(list);
	}

	@RequestMapping(value = "/bopoplist", produces = "text/html;charset=utf-8")
	public String board_pop_and_list() {
		List<BoardVO> list = service.board_pop_and_list();
		return new Gson().toJson(list);
	}

	@RequestMapping(value = "/andBolist", produces = "text/html;charset=utf-8")
	public String and_board_list_read(int id) {

		return service.board_read(id) + "";
	}

	@RequestMapping(value = "/anddelete.bo", produces = "text/html;charset=utf-8")
	public String anddelete_board(String vo) {// 변수이름 : ※URL에 담긴 정보 구분※
		// id라는 변수에 URL에 입력 된 값을 받아서 출력해보기.
		BoardVO vo1 = new Gson().fromJson(vo, BoardVO.class);

		int result = service.board_delete(vo1);
		System.out.println(result);
		// 응답화면 연결
		return result + "";
	}

	@RequestMapping(value = "/andupdate.bo", produces = "text/html;charset=utf-8")
	public String update(String vo) {
		System.out.println(vo);
		// mapper에 각각의 필드로 나눠서 보내줘야 함.
		BoardVO vo2 = new Gson().fromJson(vo, BoardVO.class);
		if (vo2 != null) {
			System.out.println("vo로 다시 변환이 됨");
			service.board_update(vo2);
		}

		// 응답화면연결
		return new Gson().toJson(vo2);
	}

	@RequestMapping(value = "/andinsert.bo", produces = "text/html;charset=utf-8")
	public String board_insert(String vo) {
		BoardVO temp_vo = new Gson().fromJson(vo, BoardVO.class);
		service.board_insert(temp_vo);

		return new Gson().toJson(vo);
	}

	// 방명록 댓글목록조회 요청
	@RequestMapping(value = "/comment", produces = "text/html;charset=utf-8")
	public String comment_list(int board_id) {
		// 해당 방명록글에 대한 댓글목록을 DB에서 조회
		// 댓글목록화면에 데이터를 출력할 수 있도록 Model에 attribute로 담는다
		List<BoardCommentVO> list = service.board_comment_list(board_id);
		// 응답화면연결
		return new Gson().toJson(list);
	}

	@RequestMapping(value="/andcomment.insert", produces = "text/html;charset=utf-8") 
	public String comment_insert(String vo2) { //화면에서 입력한 정보를 DB에 신규저장 return
	  BoardCommentVO temp_vo = new Gson().fromJson(vo2, BoardCommentVO.class);
	  System.out.println(vo2);
	  service.board_comment_insert(temp_vo);
	  
	  return "잘됨";
	  
	}
	
	@RequestMapping(value="/andcomment.delete", produces = "text/html;charset=utf-8") 
	public String and_comment_delete(String id) {
		//BoardCommentVO vo1 = new Gson().fromJson(vo, BoardCommentVO.class);
		System.out.println(id);
		int result = service.board_comment_delete(id);
		return result + "";
	}
	
	@RequestMapping(value = "/andupdate.comment", produces = "text/html;charset=utf-8")
	public String and_update(String vo) {
		System.out.println(vo);
		// mapper에 각각의 필드로 나눠서 보내줘야 함.
		BoardCommentVO vo2 = new Gson().fromJson(vo, BoardCommentVO.class);
		if (vo2 != null) {
			System.out.println("vo로 다시 변환이 됨");
			service.board_comment_update(vo2);
		}
		// 응답화면연결
		return new Gson().toJson(vo2);
	}
	
}
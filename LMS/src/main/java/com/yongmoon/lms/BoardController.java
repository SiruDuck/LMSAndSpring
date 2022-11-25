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
import org.springframework.web.multipart.MultipartFile;

import board.BoardCommentVO;
import board.BoardPageVO;
import board.BoardServiceImpl;
import board.BoardVO;
import common.CommonUtility;
import notice.NoticePageVO;
import notice.NoticeVO;

@Controller
public class BoardController {
	@Autowired private BoardServiceImpl service;
	@Autowired private CommonUtility common;
	@Autowired BoardPageVO page;
	//방명록 댓글삭제처리 요청
	@ResponseBody @RequestMapping("/board/comment/delete/{id}")
		public void comment_delete(@PathVariable int id) {
		//해당 댓글을 DB에서 삭제
		service.board_comment_delete(id);
	}
		
		
		
	//방명록 댓글변경저장처리 요청
	@ResponseBody @RequestMapping(value="/board/comment/update"
									, produces="text/plain; charset=utf-8")
		public String comment_update(@RequestBody BoardCommentVO vo) {
		//변경입력한 댓글을 DB에 변경저장한다
		return service.board_comment_update(vo)==1 ? "성공^^" : "실패ㅠㅠ";
	}
	
	
	
	
	
	
	
	@RequestMapping("/board/comment/list/{board_id}")
	public String comment_list(@PathVariable int board_id, Model model) {
		//해당 방명록글에 대한 댓글목록을 DB에서 조회
		//댓글목록화면에 데이터를 출력할 수 있도록 Model에 attribute로 담는다
		model.addAttribute("list", service.board_comment_list(board_id) );
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("if", "\r\n");
		//응답화면연결
		return "board/comment/comment_list";
	}
	
	
	
	
	
	@ResponseBody @RequestMapping("/board/comment/insert")
	public boolean comment_insert(BoardCommentVO vo) {
		return service.board_comment_insert(vo) == 1 ? true : false;
		
	}
	
	
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "/download.br", produces = "text/html; charset=utf-8")
	public String download(int id, String url, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//해당 공지글에 대한 첨부파일 정보를 DB에서 조회해와
		//클라이언트 에 다운로드하는 처리
		BoardVO vo = service.board_info(id);
		boolean download = common.fileDownload(vo.getFilename(), vo.getFilepath(), request, response);

		if (!download) {
			//다운로드가 안되어지는 경우 처리
			StringBuffer msg = new StringBuffer("<script>");
			msg.append("alert('다운로드할 파일이 없습니다!'); location='").append(url).append("'; ");
			msg.append("</script>");
			return msg.toString();
		} else
			return null;
	}
	
	
	
	
	
	@RequestMapping("/list.br")	
	public String notice(Model model, HttpSession session,
			@RequestParam(defaultValue = "1") int curPage
			, String search, String keyword) {
		
		
		session.setAttribute("category", "br");
		session.setAttribute("category", "no");
		//DB에서 공지글목록을 조회한후 목록화면에 출력
		page.setCurPage(curPage);
		page.setSearch(search);
		page.setKeyword(keyword);
		model.addAttribute("page", service.board_list(page) );
		//List<BoardVO> list = service.board_list();

		//model.addAttribute("list", list);
		
		return "board/list";
	}
	
	
	@RequestMapping("/info.br")
	public String info(Model model, int id, HttpSession session) {
		service.board_read(id);
		
		BoardVO vo = service.board_info(id);
		
		model.addAttribute("vo", vo);
		
		return "board/info";
	}
	
	
	@RequestMapping("/insert.br")
	public String insert(BoardVO vo, MultipartFile file, HttpServletRequest request) {

		if (!file.isEmpty()) {
			vo.setFilename(file.getOriginalFilename());
			vo.setFilepath(common.fileUpload("board", file, request));
		}
		service.board_insert(vo);

		return "redirect:list.br";
	}
	
	
	
	@RequestMapping("/new.br")
	public String board() {
		
		
		
		return "board/new";
	}
	
	@RequestMapping("/delete.br")
	public String delete(int id, HttpServletRequest request) throws Exception {

		service.board_delete(id);

		return "redirect:list.br";
	}
	
	
	@RequestMapping("/modify.br")
	public String modify(int id, Model model) {

		BoardVO vo = service.board_info(id);

		model.addAttribute("vo", vo);

		return "board/modify";
	}
	

	
	
	@RequestMapping("/update.br")
	public String update(BoardVO vo, String filename, MultipartFile file, HttpServletRequest request)
			throws Exception {
		BoardVO board = service.board_info(vo.getId());

		if (file.isEmpty()) {
			if (filename.isEmpty()) {
				common.attachedFile_delete(board.getFilepath(), request);
			} else {
				vo.setFilename(board.getFilename());
				vo.setFilepath(board.getFilepath());
			}
		} else {
			vo.setFilename(file.getOriginalFilename());
			vo.setFilepath(common.fileUpload("board", file, request));

			common.attachedFile_delete(board.getFilepath() , request);
		}

		service.board_update(vo);

		return "redirect:list.br";
	}

	
	
}

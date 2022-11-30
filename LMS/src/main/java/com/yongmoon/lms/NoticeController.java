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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import board.BoardVO;
import common.CommonUtility;
import notice.NoticeDAO;
import notice.NoticePageVO;
import notice.NoticeServiceImpl;
import notice.NoticeVO;

@RestController
public class NoticeController {
	@Autowired NoticePageVO page;
	@Autowired
	private NoticeServiceImpl service;
	@Autowired
	private NoticeDAO dao;
	@Autowired
	private CommonUtility common;

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/download.no", produces =
	 * "text/html; charset=utf-8") public String download(int id, String url,
	 * HttpServletRequest request, HttpServletResponse response) throws Exception {
	 * //해당 공지글에 대한 첨부파일 정보를 DB에서 조회해와 //클라이언트 에 다운로드하는 처리 NoticeVO vo =
	 * service.notice_info(id); boolean download =
	 * common.fileDownload(vo.getFilename(), vo.getFilepath(), request, response);
	 * 
	 * if (!download) { //다운로드가 안되어지는 경우 처리 StringBuffer msg = new
	 * StringBuffer("<script>");
	 * msg.append("alert('다운로드할 파일이 없습니다!'); location='").append(url).append("'; ");
	 * msg.append("</script>"); return msg.toString(); } else return null; }
	 * 
	 * // 공지글상세화면 요청
	 * 
	 * @RequestMapping("/info.no") public String info(Model model, int id,
	 * HttpSession session) { service.notice_read(id);
	 * 
	 * NoticeVO vo = service.notice_info(id);
	 * 
	 * model.addAttribute("vo", vo);
	 * 
	 * return "notice/info"; }
	 * 
	 * @RequestMapping("/insert.no") public String insert(NoticeVO vo, MultipartFile
	 * file, HttpServletRequest request) {
	 * 
	 * if (!file.isEmpty()) { vo.setFilename(file.getOriginalFilename());
	 * vo.setFilepath(common.fileUpload("notice", file, request)); }
	 * service.notice_insert(vo);
	 * 
	 * return "redirect:list.no"; }
	 * 
	 * // 공지글쓰기 화면 요청
	 * 
	 * @RequestMapping("/new.no") public String notice() { return "notice/new"; }
	 * 
	 * @RequestMapping("/list.no") public String list(Model model, HttpSession
	 * session,
	 * 
	 * @RequestParam(defaultValue = "1") int curPage , String search, String
	 * keyword) {
	 * 
	 * session.setAttribute("category", "no"); //DB에서 공지글목록을 조회한후 목록화면에 출력
	 * page.setCurPage(curPage); page.setSearch(search); page.setKeyword(keyword);
	 * model.addAttribute("page", service.notice_list(page) );
	 * 
	 * 
	 * 
	 * //List<NoticeVO> list = service.notice_list();
	 * 
	 * //model.addAttribute("list", list);
	 * 
	 * return "notice/list"; }
	 * 
	 * @RequestMapping("/delete.no") public String delete(int id, HttpServletRequest
	 * request) throws Exception {
	 * 
	 * service.notice_delete(id);
	 * 
	 * return "redirect:list.no"; }
	 * 
	 * @RequestMapping("/modify.no") public String modify(int id, Model model) {
	 * 
	 * NoticeVO vo = service.notice_info(id);
	 * 
	 * model.addAttribute("vo", vo);
	 * 
	 * return "notice/modify"; }
	 * 
	 * @RequestMapping("/update.no") public String update(NoticeVO vo, String
	 * filename, MultipartFile file, HttpServletRequest request) throws Exception {
	 * NoticeVO notice = service.notice_info(vo.getId());
	 * 
	 * if (file.isEmpty()) { if (filename.isEmpty()) {
	 * common.attachedFile_delete(notice.getFilepath(), request); } else {
	 * vo.setFilename(notice.getFilename()); vo.setFilepath(notice.getFilepath()); }
	 * } else { vo.setFilename(file.getOriginalFilename());
	 * vo.setFilepath(common.fileUpload("notice", file, request));
	 * 
	 * common.attachedFile_delete(notice.getFilepath(), request); }
	 * 
	 * service.notice_update(vo);
	 * 
	 * return "redirect:list.no"; }
	 */
	
	
	
	@RequestMapping(value = "/nolist", produces = "text/html;charset=utf-8")
	public String and_list() {
		List<NoticeVO> list = service.notice_and_list();
		return new Gson().toJson(list);
	}
	
	@RequestMapping(value = "/andNolist", produces = "text/html;charset=utf-8")
	public String and_list_read(int id) {
		
		
		return service.notice_read(id)+"";
	}
	

	
	@RequestMapping(value = "/anddelete.no", produces = "text/html;charset=utf-8")
	public String anddelete(String vo) {//변수이름 : ※URL에 담긴 정보 구분※
		//id라는 변수에 URL에 입력 된 값을 받아서 출력해보기.
		NoticeVO vo1 = new Gson().fromJson(vo, NoticeVO.class);
		
		
		int result = service.notice_delete(vo1);
		System.out.println(result);
		//응답화면 연결
		return result + "";
	}
	
	
	@RequestMapping(value = "/andupdate.no", produces = "text/html;charset=utf-8")
	public String update(String vo) {
		System.out.println(vo);
		//mapper에 각각의 필드로 나눠서 보내줘야 함.
		NoticeVO vo2 = new Gson().fromJson(vo, NoticeVO.class);
		if (vo2 != null) {
			System.out.println("vo로 다시 변환이 됨");
			service.notice_update(vo2);
		}
		
		//응답화면연결
		return new Gson().toJson(vo2);
	}
	
	@RequestMapping(value = "/andinsert.no", produces = "text/html;charset=utf-8")
	public String insert(String vo) {
		NoticeVO temp_vo = new Gson().fromJson(vo, NoticeVO.class);
		service.notice_insert(temp_vo);
		
		return new Gson().toJson(vo);
	}
	
	
	
	
	
}

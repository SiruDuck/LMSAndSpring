package notice;

import java.util.List;

public interface NoticeService {
	
	NoticePageVO notice_list(NoticePageVO page); 			//공지글 목록 조회
	NoticeVO notice_info(int id);			//공지사항 정보 조회
	int notice_insert(NoticeVO vo);			//공지사항 신규글저장
	int notice_update(NoticeVO vo);			//공지사항 변경저장
	int notice_delete(int id);				//공지사항 삭제
	int notice_read(int id);				//공지글 조회수 변경
	
}

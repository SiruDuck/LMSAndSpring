package board;

import java.util.List;

import notice.NoticeVO;


public interface BoardService {
	
	BoardPageVO board_list(BoardPageVO page) ;			//공지글 목록 조회
	BoardVO board_info(int id);				//공지사항 정보 조회
	int board_insert(BoardVO vo);			//공지사항 신규글저장
	int board_update(BoardVO vo);			//공지사항 변경저장
	int board_delete(int id);				//공지사항 삭제
	int board_read(int id);					//공지글 조회수 변경
	
	
	
	
	int board_comment_insert(BoardCommentVO vo); //댓글신규저장
	List<BoardCommentVO> board_comment_list(int board_id);//댓글목록조회
	int board_comment_update(BoardCommentVO vo);//댓글수정저장
	int board_comment_delete(int id);//댓글삭제
	
	
	
	
}

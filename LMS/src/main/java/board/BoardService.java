package board;

import java.util.List;

import notice.NoticeVO;


public interface BoardService {
	
	List<BoardVO> board_and_list();
	int board_delete(BoardVO vo);
	int board_update(BoardVO vo);
	
	int board_read(int id);
	
	int board_insert(BoardVO vo);
	
	List<BoardVO> board_pop_and_list();
	
	List<BoardCommentVO> board_comment_list(int board_id);//댓글목록조회
	
	int board_comment_insert(BoardCommentVO vo); //댓글신규저장 List<BoardCommentVO>
	
	int board_comment_delete(String vo);
	
	int board_comment_update(BoardCommentVO vo);
	
	
	
}

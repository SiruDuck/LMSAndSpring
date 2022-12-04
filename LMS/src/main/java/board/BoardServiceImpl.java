package board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired private BoardDAO dao;

	@Override
	public List<BoardVO> board_and_list() {
		return dao.board_and_list();
	}

	@Override
	public int board_delete(BoardVO vo) {
		return dao.board_delete(vo);
	}

	@Override
	public int board_update(BoardVO vo) {
		// TODO Auto-generated method stub
		return dao.board_update(vo);
	}

	@Override
	public int board_read(int id) {
		// TODO Auto-generated method stub
		return dao.board_read(id);
	}

	@Override
	public int board_insert(BoardVO vo) {
		// TODO Auto-generated method stub
		return dao.board_insert(vo);
	}

	@Override
	public List<BoardVO> board_pop_and_list() {
		// TODO Auto-generated method stub
		return dao.board_pop_and_list();
	}

	@Override
	public List<BoardCommentVO> board_comment_list(int board_id) {
		// TODO Auto-generated method stub
		return dao.board_comment_list(board_id);
	}

	@Override
	public int board_comment_insert(BoardCommentVO vo) {
		// TODO Auto-generated method stub
		return dao.board_comment_insert(vo);
	}

	@Override
	public int board_comment_delete(String id) {
		// TODO Auto-generated method stub
		return dao.board_comment_delete(id);
	}

	@Override
	public int board_comment_update(BoardCommentVO vo) {
		// TODO Auto-generated method stub
		return dao.board_comment_update(vo);
	}

	

	

	
	
	
}

package board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO implements BoardService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<BoardVO> board_and_list() {
		return sql.selectList("board.and_list");
	}

	@Override
	public int board_delete(BoardVO vo) {
		return sql.delete("board.delete", vo);
	}

	@Override
	public int board_update(BoardVO vo) {
		// TODO Auto-generated method stub
		return sql.update("board.update", vo);
	}

	@Override
	public int board_read(int id) {
		return sql.update("board.read", id);
	}

	@Override
	public int board_insert(BoardVO vo) {
		// TODO Auto-generated method stub
		return sql.insert("board.insert", vo);
	}

	@Override
	public List<BoardVO> board_pop_and_list() {
		// TODO Auto-generated method stub
		return sql.selectList("board.and_pop_list");
	}

	@Override
	public List<BoardCommentVO> board_comment_list(int board_id) {
		// TODO Auto-generated method stub
		return sql.selectList("board.and_comment_list", board_id);
	}

	@Override
	public int board_comment_insert(BoardCommentVO vo) {
		// TODO Auto-generated method stub
		return sql.insert("board.comment_insert", vo);
	}

	@Override
	public int board_comment_delete(String id) {
		// TODO Auto-generated method stub
		return sql.delete("board.comment_delete", id);
	}

	@Override
	public int board_comment_update(BoardCommentVO vo) {
		// TODO Auto-generated method stub
		return sql.update("board.comment_update", vo);
	}

	


	
	
}

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
	public BoardPageVO board_list(BoardPageVO page) {
		page.setTotalList( sql.selectOne("board.totalList", page) );
		page.setList( sql.selectList("board.list", page) );
		return page;
	}

	
	@Override
	public int board_insert(BoardVO vo) {
		return sql.insert("board.insert", vo);
	}

	@Override
	public int board_update(BoardVO vo) {
		return sql.update("board.update", vo);
	}

	@Override
	public int board_delete(int id) {
		return sql.delete("board.delete", id);
	}

	@Override
	public int board_read(int id) {
		return sql.update("board.read", id);
	}


	@Override
	public BoardVO board_info(int id) {
		return sql.selectOne("board.info", id);
	}


	@Override
	public int board_comment_insert(BoardCommentVO vo) {
		return sql.insert("board.comment_insert", vo);
	}


	@Override
	public List<BoardCommentVO> board_comment_list(int board_id) {
		// TODO Auto-generated method stub
		return sql.selectList("board.comment_list", board_id);
	}


	@Override
	public int board_comment_update(BoardCommentVO vo) {
		// TODO Auto-generated method stub
		return sql.update("board.comment_update", vo);
	}


	@Override
	public int board_comment_delete(int id) {
		// TODO Auto-generated method stub
		return sql.delete("board.comment_delete", id);
	} 
	
	
	
}

package board;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;
@Component
public class BoardPageVO extends PageVO{
	private List<BoardPageVO> list;

	public List<BoardPageVO> getList() {
		return list;
	}

	public void setList(List<BoardPageVO> list) {
		this.list = list;
	}
	
	
	
}

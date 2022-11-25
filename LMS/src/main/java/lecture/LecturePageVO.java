package lecture;

import java.util.List;

import common.PageVO;

public class LecturePageVO extends PageVO {
	private List<LectureVO> list;

	public List<LectureVO> getList() {
		return list;
	}

	public void setList(List<LectureVO> list) {
		this.list = list;
	}
	
	
}

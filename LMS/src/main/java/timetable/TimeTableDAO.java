package timetable;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class TimeTableDAO implements TimeTableService {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	
	@Override
	public List<TimeTableVO> timeTableRegist(HashMap<String, String> temp_map) {
		return sql.selectList("time.regist",temp_map);
	}

	@Override
	public TimeTableVO timeTableDetail(int lecture_num) {
		return sql.selectOne("time.detail", lecture_num);
	}

	@Override
	public List<TimeTableVO> lecture_title_list() {
		return sql.selectList("time.titleList");
	}

	@Override
	public List<TimeTableVO> lecture_title_search(String lecture_title) {
		return sql.selectList("time.lecture_title_list",  lecture_title);
	}

	@Override
	public List<TimeTableVO> timeTable_list(String id) {
		return sql.selectList("time.timeTable_list", id);
	}

	@Override
	public void timeTable_delete(EnrolmentVO vo) {
		sql.update("time.delete", vo);
	}

	@Override
	public List<TimeTableVO> sortation_list(String sortation) {
		return sql.selectList("time.sort_list", sortation);
	}

	@Override
	public void timeTable_insert(EnrolmentVO vo) {
		sql.insert("time.insert", vo);
	}

	@Override
	public void timeTable_update(EnrolmentVO vo) {
		sql.update("time.update", vo);
		
	}

	

	

//	@Override
//	public List<TimeTableVO> lecture_title_lsit(String lecture_title) {
//		return sql.selectList("time.lecture_title_list", lecture_title);
//	}


	

}

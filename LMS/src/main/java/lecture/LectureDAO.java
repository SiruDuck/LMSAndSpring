package lecture;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAO implements LectureService {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	@Override
	public List<LectureVO> lecture_list() {
		
		return sql.selectList("lecture.list");
	}
	@Override
	public List<LectureVO> lecture_list(LectureVO vo) {
		
		return sql.selectList("lecture.list",vo);
	}

	@Override
	public int lecture_insert(LectureVO vo) {
		
		return sql.insert("lecture.insert", vo);
	}

	@Override
	public void lecture_update(LectureVO vo) {
		sql.update("lecture.update", vo);
		
	}

	@Override
	public void lecture_delete(int lecture_num) {
		sql.delete("lecture.delete", lecture_num);
		
	}

	@Override
	public LectureVO lecture_info(int lecture_num) {
		return sql.selectOne("lecture.info", lecture_num);
	}

	@Override
	public LecturePageVO lecture_list(LecturePageVO page) {
		page.setTotalList(sql.selectOne("lecture.total", page));
		page.setList(sql.selectList("lecture.list", page));
		return page;
	}

	@Override
	public List<LectureVO> teacher_lec_list(String teacher_name) {
		
		return sql.selectList("lecture.teacher_lec", teacher_name);
	}

	

	@Override
	public List<LectureVO> student_lec_list(String id) {
		
		return sql.selectList("lecture.student_lec", id);
	}

	@Override
	public List<LectureVO> teacher_stu(int lecture_num) {
		
		return sql.selectList("lecture.teacher_stu", lecture_num);
	}

	
	
	
	
		
		
	}
	
	



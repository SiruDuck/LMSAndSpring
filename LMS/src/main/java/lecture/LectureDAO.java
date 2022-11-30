package lecture;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAO  {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	
	
	
	public List<LectureVO> lecture_list() {
		
		return sql.selectList("lecture.list");
	}
	
	public List<LectureVO> lecture_list(LectureVO vo) {
		
		return sql.selectList("lecture.list",vo);
	}

	
	public LectureVO lecture_insert(LectureVO vo) {
		
		sql.insert("lecture.insert", vo);
		return vo;
	}

	
	public void lecture_update(LectureVO dto) {
		
		sql.update("lecture.update", dto);
		
	}

	
	public int lecture_delete(int lecture_num) {
		return sql.delete("lecture.delete", lecture_num);
		
	}

	
	public LectureVO lecture_info(int lecture_num) {
		return sql.selectOne("lecture.info", lecture_num);
	}

	
	public LecturePageVO lecture_list(LecturePageVO page) {
		page.setTotalList(sql.selectOne("lecture.total", page));
		page.setList(sql.selectList("lecture.list", page));
		return page;
	}

	
	public List<LectureVO> teacher_lec_list(String teacher_name) {
		
		return sql.selectList("lecture.teacher_lec", teacher_name);
	}

	

	
	public List<LectureVO> student_lec_list(String id) {
		
		return sql.selectList("lecture.student_lec", id);
	}

	
	public List<LectureVO> teacher_stu(int lecture_num) {
		
		return sql.selectList("lecture.teacher_stu", lecture_num);
	}

	
	
	
	
		
		
	}
	
	



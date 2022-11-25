package score;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class ScoreDAO implements ScoreService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<ScoreVO> lookup_list(String id) {
		return sql.selectList("score.list", id);
	}
	//학생 페이지 과목 조회
	@Override
	public List<ScoreVO> lookup_lectures(String id) {
		return sql.selectList("score.lectures", id);
		
	}

	
	
	@Override
	public List<ScoreVO> lookup_list(String id, int num) {
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		map.put("id", id);
		map.put("num", num);
		
		return sql.selectList("score.lectureOne",map);
	}

	@Override
	public List<ScoreVO> lookup_years(String id) {
		return sql.selectList("score.lectureYear", id);
	}

	@Override
	public List<ScoreVO> lookup_years(String id, int year) {
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		map.put("id", id);
		map.put("year", year);
		
		return sql.selectList("score.lectureYearOne",map);
	}

	
	/*------------------------------------ 교수 ---------------------------------------*/
	
	@Override
	public List<ScoreVO> lookup_list_for_teacher(String id) {
		return sql.selectList("score.list_teacher", id);
	}
	
	@Override
	public List<ScoreVO> search_name(String student, String id) {
		//교수 화면에서 학생이름 조회
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("student", student);
		
		return sql.selectList("score.search_name", map);
	}


	@Override
	public List<ScoreVO> search_name(String student, String id, int year) {
		//교수 화면에서 학생이름 및 년도 조회
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("student", student);
		map.put("year", year);
		return sql.selectList("score.search_name_year", map);
	}
	@Override
	public List<ScoreVO> search_name(String id, int year) {
		//교수 화면에서 년도별 학생 조회
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("year", year);
		return sql.selectList("score.teacher_year_student",map);
	}

	@Override
	public List<ScoreVO> lookup_teacher_years(String id) {
		//교수 페이지 년도 조회
		return sql.selectList("score.teacher_lectureYear",id);
	}

	@Override
	public List<ScoreVO> lookup_teacher_lectures(String id) {
		return sql.selectList("score.lookup_teacher_lectures", id);
	}

	@Override
	public List<ScoreVO> search_student(String id) {
		return sql.selectList("score.search_student",id);
	}
	//학생 페이지 평균 조회
	@Override
	public ScoreVO calc_avg(String id) {
		return sql.selectOne("score.calc_avg",id);
	}
	
	/* -----------성적입력------------ */
	@Override
	public int data_check(String id, int num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("num", num);
		return sql.selectOne("score.data_check", map);
	}

	//성적입력처리
	@Override
	public int score_insert(ScoreVO vo) {
		return sql.insert("score.insert",vo);
	}

	//성적 입력시 데이터 중복확인
	@Override
	public int id_check(String id) {
		return sql.selectOne("score.id_check",id);
	}

	//교수 페이지 한 학생 조회
	@Override
	public ScoreVO selectOne(String id, int num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("num", num);
		return sql.selectOne("score.selectOne", map);
	}

	@Override
	public int score_update(ScoreVO vo) {
		return sql.update("score.update",vo);
	}

	@Override
	public int score_delete(String id, int lecture_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("num", lecture_num);
		return sql.delete("score.delete",map);
	}

	//교수 페이지 과목 조회
	@Override
	public List<ScoreVO> lookup_teacher_subject(String id) {
		return sql.selectList("score.teacher_lectures", id);
	}
	
	//교수 페이지 성적 평균 조회
	@Override
	public List<ScoreVO> avg_teacher_subject(String id) {
		return sql.selectList("score.avg_teacher_subject",id);
	}

	

	
}

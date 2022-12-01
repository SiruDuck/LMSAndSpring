package score;

import java.util.List;

public interface ScoreService {

	//학생
	public List<ScoreVO> lookup_list(String id);					//리스트 조회
	public List<ScoreVO> lookup_list_for_teacher(String name);		//리스트 조회 교수화면
	public List<ScoreVO> lookup_list(String id, int num);			//특정 과목리스트 조회
	public List<ScoreVO> lookup_lectures(String id);				//학생 페이지 과목 조회
	public List<ScoreVO> lookup_years(String id);					//학생 페이지 년도 조회
	public List<ScoreVO> lookup_years(String id, int year);			//특정 년도별 조회
	public ScoreVO calc_avg(String id);						//학생 페이지 평균 조회
	
	
	//교수화면
	public List<ScoreVO> search_student(String id);					//교수 화면에서 수강중인 학생 조회
	public List<ScoreVO> lookup_teacher_lectures(String id);		//교수 화면에서 과목 조회
	public List<ScoreVO> search_name(String student, String id);	//교수 화면에서 학생이름 조회
	public List<ScoreVO> search_name(String id, int year);			//교수 화면에서 년도별 학생 조회
	public List<ScoreVO> search_name(String student, String id, int year);	//교수 화면에서 학생이름 및 년도 조회
	public List<ScoreVO> lookup_teacher_years(String id);			//교수 페이지 년도 조회
	public List<ScoreVO> lookup_teacher_subject(String id);			//교수 페이지 과목 조회
	public ScoreVO selectOne(String id, int num);					//교수 페이지 한 학생 조회
	public List<ScoreVO> avg_teacher_subject(String id);					//교수 페이지 성적 평균 조회
	
	public ScoreVO avg_teacher_and(String id);						//안드로이드 교수 페이지 한 학생 조회
	
	//성적입력
	public int data_check(String id, int num);						//성적 입력시 데이터 중복확인
	public int id_check(String id);									//성적 입력시 데이터 중복확인
	public int score_insert(ScoreVO vo);							//성적 입력처리
	public int score_update(ScoreVO vo);							//성적 수정처리
	public int score_delete(String id, int lecture_num);			//성적 삭제처리
	
	
}

package lecture;

import java.util.List;

public interface LectureService {

	List<LectureVO> lecture_list(LectureVO vo);//수강 목록 조회
	List<LectureVO> lecture_list();//수강 목록 조회
	LecturePageVO lecture_list(LecturePageVO page);
	int lecture_insert(LectureVO vo);//강의 개설
	void lecture_update(LectureVO vo);//강의 정보 수정
	void lecture_delete(int lecture_num);//강의 삭제
	LectureVO lecture_info(int lecture_num);//강의 상세 정보
	List<LectureVO> teacher_lec_list(String teacher_name);//교수 개인 강의 목록
	List<LectureVO> student_lec_list(String id);//학생 수강 강의 목록
	List<LectureVO> teacher_stu(int lecture_num);//교수가 본인 과목 수강 학생 조회
		

}

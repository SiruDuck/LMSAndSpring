package timetable;

import java.util.HashMap;
import java.util.List;

public interface TimeTableService {
	List<TimeTableVO> timeTableRegist(HashMap<String, String> temp_map);	// 수강신청목록
	
	TimeTableVO timeTableDetail(int lecture_num);		// 상세보기
	
	List<TimeTableVO> lecture_title_list();		// 학과 목록 조회
	
	List<TimeTableVO> sortation_list(String sortation);		//이수구분 조회
	
	List<TimeTableVO> lecture_title_search(String lecture_title);		// 과목명으로 조회
	
	List<TimeTableVO> timeTable_list(String id);		// 시간표 보기 
	
	void timeTable_delete(EnrolmentVO vo);	// 시간표 삭제
	
	void timeTable_insert(EnrolmentVO vo);	// 수강신청(시간표 등록)
	
	void timeTable_update(EnrolmentVO vo);	// 시간표 수정

	
	
	
}

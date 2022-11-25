package lecture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LectureServiceImpl implements LectureService {
	@Autowired private LectureDAO dao;
	@Override
	public List<LectureVO> lecture_list() {

		return dao.lecture_list();
	}
	@Override
	public List<LectureVO> lecture_list(LectureVO vo) {

		return dao.lecture_list(vo);
	}

	@Override
	public int lecture_insert(LectureVO vo) {
		
		return dao.lecture_insert(vo);
	}

	@Override
	public void lecture_update(LectureVO vo) {
		dao.lecture_update(vo);
		
	}

	@Override
	public void lecture_delete(int lecture_num) {
		dao.lecture_delete(lecture_num);

	}

	@Override
	public LectureVO lecture_info(int lecture_num) {
		
		return dao.lecture_info(lecture_num);
	}

	@Override
	public LecturePageVO lecture_list(LecturePageVO page) {
		
		return dao.lecture_list(page);
	}

	@Override
	public List<LectureVO> teacher_lec_list(String teacher_name) {
	
		return dao.teacher_lec_list(teacher_name);
	}

	@Override
	public List<LectureVO> student_lec_list(String id) {
		
		return dao.student_lec_list(id);
	}

	@Override
	public List<LectureVO> teacher_stu(int lecture_num) {
		
		return dao.teacher_stu(lecture_num);
	}


	

	

	

}

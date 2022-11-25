package member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import department.DepartmentVO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO dao;

	@Override
	public MemberVO login_login(String id, String pw) throws Exception{
		return dao.login_login(id, pw);
	}

	@Override
	public List<MemberVO> member_list() {
		return dao.member_list();
	}
	
	
	//과 조회
	@Override
	public List<DepartmentVO> department_list() {
		return dao.department_list();
	}

	@Override
	public List<MemberVO> info_list() {
		return dao.info_list();
	}

	@Override
	public List<MemberVO> search_name_list(String name) {
		return dao.search_name_list(name);
	}

	@Override
	public List<MemberVO> search_id_list(String id) {
		return dao.search_id_list(id);
	}
	
	

	public int member_join(MemberVO vo) {
		return dao.member_join(vo);
	}

	@Override
	public int member_id_check(String id) {
		return dao.member_id_check(id);
	}

	//특정과 학생목록 조회
	@Override
	public List<MemberVO> member_list(int department_id) {
		
		return dao.member_list(department_id);
	}

	@Override
	public MemberVO viewMember(String id) {
		return dao.viewMember(id);
	}

	
	
	
	//////////////////////////////////안드로이드////////////////////////////
	
	
	@Override
	public MemberVO and_login(String id) {
		
		return dao.and_login(id);
	}

	
	
	

	
	
	
	
	
}

package member;

import java.util.List;

import department.DepartmentVO;

public interface MemberService {
	
	MemberVO login_login(String id, String pw) throws Exception;
	

	List<MemberVO> member_list();	//전체 멤버리스트
	List<MemberVO> member_list(int info_cd); //구분 멤버 리스트
	
	List<DepartmentVO> department_list();	//과 리스트
	
	List<MemberVO> info_list();			//info 리스트
	
	List<MemberVO> search_name_list(String name);			//이름으로 검색 리스트
	
	List<MemberVO> search_id_list(String id);

	int member_join(MemberVO vo);
	int member_id_check(String id);
	
	MemberVO viewMember(String id);	


	MemberVO and_login(String id) throws Exception;
	

	
}

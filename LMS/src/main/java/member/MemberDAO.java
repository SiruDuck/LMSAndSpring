package member;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import department.DepartmentVO;

@Repository
public class MemberDAO implements MemberService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public MemberVO login_login(String id, String pw) throws Exception{
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		return sql.selectOne("member.login", map);
	}

	@Override

	public List<MemberVO> member_list() {
		return sql.selectList("member.member_list");
	}

	@Override
	public List<DepartmentVO> department_list() {
		// TODO Auto-generated method stub
		return sql.selectList("department.list");
	}

	@Override
	public List<MemberVO> info_list() {
		return sql.selectList("member.info");
	}

	@Override
	public List<MemberVO> search_name_list(String name) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		return sql.selectList("member.search_name_list",map);
	}

	@Override
	public List<MemberVO> search_id_list(String id) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		return sql.selectList("member.search_id_list",map);
	}

	public int member_join(MemberVO vo) {
		return sql.insert("member.join", vo);
	}

	@Override
	public int member_id_check(String id) {
		return sql.selectOne("member.id_check", id);
	}

	//특정과 학생목록 조회
	@Override
	public List<MemberVO> member_list(int info_cd) {
		return sql.selectList("member.department_list",info_cd);
	}
	
	
	@Override
	public MemberVO viewMember(String id) {
		return sql.selectOne("member.viewMember", id);
	}
	
	
	
	
	//////////////////////////////안드로이드///////////////////////////////////
	
	
	
	
	@Override
	public MemberVO and_login(String id){
		
		
		return sql.selectOne("member.andlogin", id);
	}

	

	
	
	
	
	
	
	

	
	
	
	
}

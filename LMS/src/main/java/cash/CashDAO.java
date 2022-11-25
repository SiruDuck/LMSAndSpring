package cash;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import member.MemberVO;

@Repository
public class CashDAO implements CashService{
	@Autowired @Qualifier("ymu") private SqlSession sql;

	@Override
	public List<Cash_ingVO> cash_ing_list() {
		return sql.selectList("cash.cash_ing_list");
	}

	@Override
	public List<Cash_finalVO> cash_final_list() {
		return sql.selectList("cash.cash_final_list");
	}

	@Override
	public int cash_ing_insert(String id) {
		return 0;
	}

	@Override
	public List<Cash_finalVO> cash_final_list(Cash_FilterVO filter) {
		return sql.selectList("cash.cash_final_list_filter", filter);
	}

	@Override
	public List<Cash_finalVO> cash_salary_final_list() {
		return sql.selectList("cash.admin_salary_list");
	}

	@Override
	public List<Cash_finalVO> cash_tuition_final_list() {
		return sql.selectList("cash.admin_tuition_list");
	}

	@Override
	public List<Cash_finalVO> cash_scholarship_final_list() {
		return sql.selectList("cash.admin_scholarship_list");
	}

	
	

	
}

package equipment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class EquipmentDAO {
	@Autowired @Qualifier("ymu") private SqlSession sql;
	
	
	public List<EquipmentVO> list() {
		return sql.selectList("member.equipment_list");
	}
	
	public List<EquipmentVO> search_name_list(String equipment){
		return sql.selectList("member.equipment_search_name_list",equipment);
	}
	
	public void eqinsert(EquipmentVO vo) {
		System.out.println(vo);
		sql.insert("member.equipment_insert",vo);
		return;
	}
	public void eqmodify(EquipmentVO vo) {
		sql.update("member.equipment_modify",vo);
		return ;
	}
	public void eqdelete(String equipment) {
		sql.delete("member.equipment_delete",equipment);
		return;
	}
	
	
}

package com.yongmoon.lms;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cash.CashServiceImpl;
import cash.Cash_FilterVO;
import cash.Cash_finalVO;
import department.DepartmentVO;
import member.MemberDAO;

@Controller
public class CashController {
	@Autowired private CashServiceImpl service;
	@Autowired private MemberDAO md;
	@RequestMapping("/cash.ing")
	public String list(Model model,  Cash_FilterVO filter , String category ) {
		List<Cash_finalVO> list = null;
		List<Cash_finalVO> final_salarylist = service.cash_salary_final_list();
		List<Cash_finalVO> final_tuitionlist = service.cash_tuition_final_list();
		List<Cash_finalVO> final_scholarshiplist = service.cash_scholarship_final_list();
		//if(category.equals("all")) {	//카테고리가 all이면,
		
			if( filter.getCash_year()==-1 && filter.getCash_month()==-1 ) {
				list = service.cash_final_list();
			}else {
				list = service.cash_final_list(filter );
			}
			List<DepartmentVO> department_list = md.department_list();
			model.addAttribute("list",list);
			model.addAttribute("department_list",department_list);
			model.addAttribute("filter",filter);
			model.addAttribute("category",category);
			model.addAttribute("tuition_list",final_tuitionlist);
			model.addAttribute("salary_list",final_salarylist);
			model.addAttribute("scholarship_list",final_scholarshiplist);
		//}else if (category.equals("salary")) {
		//}
		return "cash/cashing";
	}
	
	@RequestMapping("/sc.add")
	public String acadd() {
		
		return "cash/scholarship/sc_insert";
	}
	
	
	
	
	

}

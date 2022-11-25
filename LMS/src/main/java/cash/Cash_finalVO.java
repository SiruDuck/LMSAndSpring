package cash;

import java.sql.Date;

public class Cash_finalVO {
	private int final_code, cash_code,  price, payment_status, nowprice;
	private String id, cash_name, description, tax, tax_a, tax_b, tax_c, tax_d, department_name, info_name, name, grade, state;
	private Date payment_start_date, payment_end_date, payment_day, start_date, end_date;
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNowprice() {
		return nowprice;
	}
	public void setNowprice(int nowprice) {
		this.nowprice = nowprice;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getInfo_name() {
		return info_name;
	}
	public void setInfo_name(String info_name) {
		this.info_name = info_name;
	}
	public int getFinal_code() {
		return final_code;
	}
	public void setFinal_code(int final_code) {
		this.final_code = final_code;
	}
	public int getCash_code() {
		return cash_code;
	}
	public void setCash_code(int cash_code) {
		this.cash_code = cash_code;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(int payment_status) {
		this.payment_status = payment_status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCash_name() {
		return cash_name;
	}
	public void setCash_name(String cash_name) {
		this.cash_name = cash_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getTax_a() {
		return tax_a;
	}
	public void setTax_a(String tax_a) {
		this.tax_a = tax_a;
	}
	public String getTax_b() {
		return tax_b;
	}
	public void setTax_b(String tax_b) {
		this.tax_b = tax_b;
	}
	public String getTax_c() {
		return tax_c;
	}
	public void setTax_c(String tax_c) {
		this.tax_c = tax_c;
	}
	public String getTax_d() {
		return tax_d;
	}
	public void setTax_d(String tax_d) {
		this.tax_d = tax_d;
	}
	public Date getPayment_start_date() {
		return payment_start_date;
	}
	public void setPayment_start_date(Date payment_start_date) {
		this.payment_start_date = payment_start_date;
	}
	public Date getPayment_end_date() {
		return payment_end_date;
	}
	public void setPayment_end_date(Date payment_end_date) {
		this.payment_end_date = payment_end_date;
	}
	public Date getPayment_day() {
		return payment_day;
	}
	public void setPayment_day(Date payment_day) {
		this.payment_day = payment_day;
	}
	
	
	
}

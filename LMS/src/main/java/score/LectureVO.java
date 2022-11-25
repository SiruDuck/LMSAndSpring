package score;

import java.sql.Date;

public class LectureVO {

	private String  lecture_title, syllabus, teacher_name, semester, sortation, lectur_room, 
	 lecture_time, 
	enrolment, reception_status, capacity,  subjectcredit, state, book;
	private int lecture_num;
	private Date lecture_startdate, lecture_enddate,midex, finalex;
	public String getLecture_title() {
		return lecture_title;
	}
	public void setLecture_title(String lecture_title) {
		this.lecture_title = lecture_title;
	}
	public String getSyllabus() {
		return syllabus;
	}
	public void setSyllabus(String syllabus) {
		this.syllabus = syllabus;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getSortation() {
		return sortation;
	}
	public void setSortation(String sortation) {
		this.sortation = sortation;
	}
	public String getLectur_room() {
		return lectur_room;
	}
	public void setLectur_room(String lectur_room) {
		this.lectur_room = lectur_room;
	}
	public String getLecture_time() {
		return lecture_time;
	}
	public void setLecture_time(String lecture_time) {
		this.lecture_time = lecture_time;
	}
	public String getEnrolment() {
		return enrolment;
	}
	public void setEnrolment(String enrolment) {
		this.enrolment = enrolment;
	}
	public String getReception_status() {
		return reception_status;
	}
	public void setReception_status(String reception_status) {
		this.reception_status = reception_status;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getSubjectcredit() {
		return subjectcredit;
	}
	public void setSubjectcredit(String subjectcredit) {
		this.subjectcredit = subjectcredit;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public int getLecture_num() {
		return lecture_num;
	}
	public void setLecture_num(int lecture_num) {
		this.lecture_num = lecture_num;
	}
	public Date getLecture_startdate() {
		return lecture_startdate;
	}
	public void setLecture_startdate(Date lecture_startdate) {
		this.lecture_startdate = lecture_startdate;
	}
	public Date getLecture_enddate() {
		return lecture_enddate;
	}
	public void setLecture_enddate(Date lecture_enddate) {
		this.lecture_enddate = lecture_enddate;
	}
	public Date getMidex() {
		return midex;
	}
	public void setMidex(Date midex) {
		this.midex = midex;
	}
	public Date getFinalex() {
		return finalex;
	}
	public void setFinalex(Date finalex) {
		this.finalex = finalex;
	}
		
	
	
	
	
	
	}

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
.table td:nth-child(1) {
	font-weight: 700;
	width:8rem;
	text-align: center;
	background-color:#f8f9fc;
}
.btn a:hover{
	text-decoration: none;
}
table td{
	color:#000;
}
</style>
<body>
<div class="container-fluid" style='width:50%'>      
	 <!-- DataTales Example -->
	 <div class="card shadow mb-4">
	     <!-- <div class="card-header py-3">
	         <h6 class="m-0 font-weight-bold text-primary">선택한 과목명</h6>
	     </div> -->
	     <div class="card-body">
	         <div class="table-responsive">
	             <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">	             		                
	                 <tbody>
	                     <tr>
	                         <td>강의코드</td>
	                         <td>${vo.lecture_num }</td>
	                     </tr>
	                     <tr>
	                         <td>강의명</td>
	                         <td>${vo.lecture_title }</td>
	                     </tr>
	                     <tr>
	                         <td>구분</td>
	                         <td>${vo.sortation }</td>
	                     </tr>
	                     <tr>
	                         <td>강의실</td>
	                         <td>${vo.lecture_room }</td>
	                     </tr>
	                     <tr>
	                         <td>담당교수</td>
	                         <td>${vo.teacher_name }</td>
	                     </tr>      
	                     <tr>
	                         <td>강의시간</td>
	                         <td>${vo.lecture_time }교시</td>
	                     </tr>                
	                     <tr>
	                         <td>학점</td>
	                         <td>${vo.subjectcredit }학점</td>
	                     </tr>             
	                     <tr>
	                         <td>강의유형</td>
	                         <td>${vo.state }</td>
	                     </tr>
	                     <tr>
	                     	<td>교재명</td>
	                     	<td>${vo.book }</td>
	                     </tr>             
	                     <tr>
	                     	<td>수강최대인원</td>
	                     	<td>${vo.capacity }</td>
	                     </tr>             
	                 </tbody>
	             </table>
	         </div>
	     </div>
	 </div>
	<div class='btn btn-primary btn-icon-split' style='float:right;'>
		<a class='text text-white' onclick='history.go(-1)'>뒤로가기</a>
	</div>
</div>
</body>
</html>
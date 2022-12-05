<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
span.btn {
	display: block;
}

.search-box {
	margin: 0 1rem 0 0;
}

.table-responsive {
	overflow: hidden;
}

.count-box {
	padding: 0;
	margin-bottom: 1rem;
	max-width: 10%;
}

.lec-table{
    text-align: -webkit-center;
}

.container-fluid {
	width : 1000px;
}

td{
	max-width: 80rem;
	text-align: left;
}
th{
	text-align:center;
	background: rgb(248,249,252);
	width: 10rem;
}
</style>

<body>

<div = class="lec-table">
	<div class="container-fluid" >
		<h1 class="h3 mb-2 text-gray-900 mt-2 mb-2"></h1>
	</div>
	<div class='lec-table'>
		<!-- Page Heading -->

		<!-- DataTales Example -->
		<div class="card shadow mb-4 ">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">강의 상세 정보</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div id='dataTable_wrapper'
						class='dataTables_wrapper dt-bootstrap4'>
						<table class="table table-bordered text-gray-900" id="dataTable" width="80%"
							cellspacing="0">
							<thead>
								<tr>
									<th>강의번호</th><td>${vo.lecture_num}</td>
									<th>강의실</th><td>${vo.lecture_room}</td>
								</tr>
								<tr>
									<th>교수명</th><td>${vo.teacher_name}</td>
									<th>강의명</th><td>${vo.lecture_title}</td>
								</tr>
							
								<tr>
									<th>년도</th><td>${vo.lecture_year}</td>
									<th>학기</th><td>${vo.semester}</td>
								</tr>
								
								<tr>
									<th>과목학점</th><td>${vo.subjectcredit}학점</td>
									<th>교재명</th><td>${vo.book}</td>
								</tr>
							
					
								<tr>
									<th>요일</th><td>${vo.lecture_day}</td>
									<th>교시</th><td>${vo.lecture_time}</td>
								</tr>
								<tr>
									<th>수강신청</th><td>${vo.enrolment}</td>
									<th>수강인원</th><td>${vo.capacity}</td>
								</tr>
							
								<tr>
									<th>중간고사</th><td>${vo.midex}</td>
									<th>기말고사</th><td>${vo.finalex }</td>
								</tr>
								
								<tr>
									<th>온라인/오프라인</th><td>${vo.state}</td>
									<th>이수구분</th><td>${vo.sortation}</td>
								</tr>
								<tr>
									<th>접수상태</th><td>${vo.enrolment }</td>
									<th>비고</th><td></td>
								</tr>
								
							</thead>

						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- container-fluid -->
			<div style='text-align: center'>
				<a href="list.lec" class="btn btn-primary">강의 목록</a> 
				<c:choose>
					<c:when test="${loginInfo.info_cd eq 3 or loginInfo.info_cd eq 4}">
						<a href="modify.lec?lecture_num=${vo.lecture_num}" class="btn btn-primary">정보수정</a>
						<a class="btn btn-primary"
							onclick="if(confirm('정말 삭제하시겠습니까?')) location='delete.lec?lecture_num=${vo.lecture_num}'">삭제</a>
					</c:when>
				</c:choose>
			</div>
	
				
</body>
</html>
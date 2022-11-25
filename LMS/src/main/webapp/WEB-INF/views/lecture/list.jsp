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

.lec-font {
	font-size: 14px;
	text-align: center;
}

th{
	text-align:center;
	background: rgb(248,249,252);
}
.add{
	text-align: left;
	margin-right: 20px;
	margin-bottom: 10px;
	
	
}

</style>

<body>


	<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">강의 목록</h1>
		<form action="list.lec" method="post">
		<div class='card mb-4'>
			<div class='card-header py-3'>
				<h6 class='m-0 font-weight-bold text-primary'>강의 검색</h6>
			</div>
			<div class='card-body d-flex'>
				<div class='dataTables_filter search-box'>
					<input type="search" class='form-control form-control-sm'
						placeholder='과목명'  name="lecture_title" 
						value="${search.lecture_title }"
						onkeyup="if(window.event.keyCode==13){$('form').submit()}"
						>
				</div>
				<!-- <div class='dataTables_filter search-box'>
					<select  name="department_name" 
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value='all'>학과 전체보기</option>
						<option value="101">게임개발학과</option>
						<option value="102">인공지능학과</option>
						<option value="103">웹디자인학과</option>
						<option value="104">앱개발학과</option>
						<option value="105">정보보안학과</option>
						<option value="106">빅데이터학과</option>
						<option value="107">소프트웨어학과</option>
						<option value="108">IOT반도체전자과</option>
					</select>
				</div> -->








				<div class='dataTables_filter search-box'>
					<select name="sortation" onchange='$("form").submit()'
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value=''${search.sortation eq '' ? 'selected' : '' }>전체보기</option>
						<option value='전공필수'${search.sortation eq '전공필수' ? 'selected' : '' }>전공필수</option>
						<option value='전공선택'${search.sortation eq '전공선택' ? 'selected' : '' }>전공선택</option>
						<option value='교양'${search.sortation eq '교양' ? 'selected' : '' }>교양</option>
					
					</select>
				</div>
			
				<div class='dataTables_filter search-box'>
					<select name='lecture_day' onchange='$("form").submit()'
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value=''>요일 전체보기</option>
						<option value='월'${search.lecture_day eq '월' ? 'selected' : '' }>월</option>
						<option value='화'${search.lecture_day eq '화' ? 'selected' : '' }>화</option>
						<option value='수'${search.lecture_day eq '수' ? 'selected' : '' }>수</option>
						<option value='목'${search.lecture_day eq '목' ? 'selected' : '' }>목</option>
						<option value='금'${search.lecture_day eq '금' ? 'selected' : '' }>금</option>
					</select>
				</div>
				<div class='dataTables_filter'>
					<select name="lecture_time" onchange='$("form").submit()'
						class='custom-select custom-select-sm form-control form-control-sm'>
						<option value=''>시간 전체보기</option>
						<option value='09:00~09:50'${search.lecture_time eq '09:00~09:50' ? 'selected' : '' }>1교시 (09:00~09:50)</option>
						<option value='10:00~10:50'${search.lecture_time eq '10:00~10:50' ? 'selected' : '' }>2교시 (10:00~10:50)</option>
						<option value='11:00~11:50'${search.lecture_time eq '11:00~11:50' ? 'selected' : '' }>3교시 (11:00~11:50)</option>
						<option value='12:00~12:50'${search.lecture_time eq '12:00~12:50' ? 'selected' : '' }>4교시 (12:00~12:50)</option>
						<option value='14:00~14:50'${search.lecture_time eq '14:00~14:50' ? 'selected' : '' }>5교시 (14:00~14:50)</option>
						<option value='15:00~15:50'${search.lecture_time eq '15:00~15:50' ? 'selected' : '' }>6교시 (15:00~15:50)</option>
						<option value='16:00~16:50'${search.lecture_time eq '16:00~16:50' ? 'selected' : '' }>7교시 (16:00~16:50)</option>
						<option value='17:00~17:50'${search.lecture_time eq '17:00~17:50' ? 'selected' : '' }>8교시 (17:00~17:50)</option>
					</select>
				</div>
				
			</div>		
		</div>
		</form>
				<div class="add">
					<c:choose>
						<c:when test="${loginInfo.info_cd eq 3 or loginInfo.info_cd eq 4}">
							<a href="new.lec" class="btn btn-primary">신규 강의 등록</a> 
						</c:when>
					</c:choose>
				</div>
		
		<div class="dd">
			<!-- Page Heading -->

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">전체 강의 목록</h6>
				</div>
				<div class="card-body lec-font">
					<div class="table-responsive">
						<div id='dataTable_wrapper'
							class='dataTables_wrapper dt-bootstrap4'>
							<table class="table table-bordered text-gray-800" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>강의번호</th>
										<th>년도</th>
										<th>학기</th>
										<th>강의명</th>
										<th>교수명</th>
										<th>강의실</th>
										<th>교시</th>
										<th>이수구분</th>
										<th>수강인원</th>
										<th>과목학점</th>
										<th>수업유형</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${list}" var="vo">
										<tr>
											<td>${vo.lecture_num}</td>
											<td>${vo.lecture_year}</td>
											<td>${vo.semester}</td>
											<td>${vo.lecture_title}</td>
											<td>${vo.teacher_name}</td>
											<td>${vo.lecture_room}</td>
											<td>${vo.lecture_time}</td>
											<td>${vo.sortation}</td>
											<td>${vo.capacity}</td>
											<td>${vo.subjectcredit}</td>
											<td>${vo.state}</td>
											<td><a href="detail.lec?lecture_num=${vo.lecture_num}"><button id="lec_detail" class="btn-primary">상세보기</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- container-fluid -->


	</div>



</body>
</html>
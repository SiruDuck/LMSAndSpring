<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 강의 목록</title>
</head>
<body>
<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">내 강의 목록</h1>
		
		<div class='card mb-4'>
			<div class='card-header py-3'>
				<h6 class='m-0 font-weight-bold text-primary'></h6>
			</div>
				
		</div>
		<div class="add">
					<c:choose>
						<c:when test="${loginInfo.info_cd eq 3}">
							<a href="list.lec" class="btn btn-primary">전체 강의 목록</a> 
						</c:when>
					</c:choose>
				</div>
				
		
		<div class="dd">
			<!-- Page Heading -->

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">내 강의 목록</h6>
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

									<c:forEach items="${vo}" var="vo">
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
											<td><a href="teacher_stu.lec?lecture_num=${vo.lecture_num}"><button class="btn-primary">수강인원목록</button></a></td>
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
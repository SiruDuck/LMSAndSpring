<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 학생 목록</title>
</head>
<body>
<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">수강 학생 목록</h1>
		
		<div class='card mb-4'>
			<div class='card-header py-3'>
				<h6 class='m-0 font-weight-bold text-primary'></h6>
			</div>
				
		</div>
		
		
		<div class="dd">
			<!-- Page Heading -->

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">수강 학생 목록</h6>
				</div>
				<div class="card-body lec-font">
					<div class="table-responsive">
						<div id='dataTable_wrapper'
							class='dataTables_wrapper dt-bootstrap4'>
							<table class="table table-bordered text-gray-800" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>학번</th>
										<th>이름</th>
										<th>성별</th>
										<th>학년</th>
										<th>학과</th>
										<th>전화번호</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${vo}" var="vo">
										<tr>
											<td>${vo.id}</td>
											<td>${vo.name}</td>
											<td>${vo.gender}</td>
											<td>${vo.grade}</td>
											<td>${vo.department_name}</td>
											<td>${vo.phone}</td>
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
			<div style='text-align: center'>
				<a href="teacher_lec_list.lec" class="btn btn-primary">뒤로가기</a>
			</div>

</body>
</html>
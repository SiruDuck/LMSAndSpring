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


tr{
	text-align: center;
}


td {
 text-align: left;
}
label:nth-child(1){
	margin-left : 10px;
}
}
label:nth-last-child(1){
	margin-right : 0;
}
label{
	margin-right : 30px;
}


.container-fluid{
	width : 1100px;
}
.lec-table{
    text-align: -webkit-center;
}


</style>



<body>

<div class="lec-table">
	<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2"></h1>
	</div>
	<div class='lec-table' >
		<!-- Page Heading -->

		<!-- DataTales Example -->
		<div class="card shadow mb-4" >
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">신규 강의 등록</h6>
			</div>
			<div class="card-body lec-font">
				<div class="table-responsive">
					<div id='dataTable_wrapper'
						class='dataTables_wrapper dt-bootstrap4'>
						<form method='post' action='insert.lec'>
							<table class="table table-bordered text-gray-900" id="dataTable" width="80%">
							
								<colgroup>
									<col width="200px">
									<col width="600px">
								</colgroup>
								<tr>
									<th>강의명</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='text' name='lecture_title' value="${vo.lecture_title}" ></td>
								</tr>
								<tr>
									<th>교수명</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='text' name='teacher_name' value="${vo.teacher_name}" ></td>
								</tr>
								<tr>
									<th>이수 구분</th>
									<td><label><input type='radio' name='sortation' value="전공필수" ${vo.sortation}>전공필수</label>
										<label><input type='radio' name='sortation' value="전공선택" ${vo.sortation}>전공선택</label>
										<label><input type='radio' name='sortation' value="교양" ${vo.sortation}>교양</label></td>
								</tr>
								<tr>
									<th>학점</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='number' name='subjectcredit' min='1' max='3' value="학점" ${vo.subjectcredit}></td>
								</tr>
								<tr>
									<th>강의실</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='text' name='lecture_room' value="${vo.lecture_room}" ></td>
								</tr>
								<tr>
									<th>수강요일</th>
									<td><label><input type='checkbox' name='lecture_day' value="월"${vo.lecture_day }>월</label>
										<label><input type='checkbox' name='lecture_day' value="화"${vo.lecture_day }>화</label>
										<label><input type='checkbox' name='lecture_day' value="수"${vo.lecture_day }>수</label>
										<label><input type='checkbox' name='lecture_day' value="목"${vo.lecture_day }>목</label>
										<label><input type='checkbox' name='lecture_day' value="금"${vo.lecture_day }>금</label></td>
								</tr>
								<tr>
									<th>교시</th>
									<td><label><input type='checkbox' name='lecture_time' value="1"${vo.lecture_time}>1</label>
										<label><input type='checkbox' name='lecture_time' value="2"${vo.lecture_time}>2</label>
										<label><input type='checkbox' name='lecture_time' value="3"${vo.lecture_time}>3</label>
									 	<label><input type='checkbox' name='lecture_time' value="4"${vo.lecture_time}>4</label>
										<label><input type='checkbox' name='lecture_time' value="5"${vo.lecture_time}>5</label>
										<label><input type='checkbox' name='lecture_time' value="6"${vo.lecture_time}>6</label>
										<label><input type='checkbox' name='lecture_time' value="7"${vo.lecture_time}>7</label>
										<label><input type='checkbox' name='lecture_time' value="8"${vo.lecture_time}>8</label></td>
								</tr>
								<tr>
									<th>수강인원</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='text' name='capacity' value="${vo.capacity}" ></td>
								</tr>
								<tr>
									<th>중간고사</th>
									<td><input type='date' name='midex' value="${vo.midex}"></td>
								</tr>
								<tr>
									<th>기말고사</th>
									<td><input type='date' name='finalex' value="${vo.finalex}"></td>
								</tr>
								<tr>
									<th>온/오프라인</th>
									<td><label><input type='radio' name='state' value="온라인" ${vo.state }>온라인</label>
										<label><input type='radio' name='state' value="오프라인" ${vo.state }>오프라인</label>
									</td>
								</tr>
								<tr>
									<th>교재명</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='text' name='book' value="${vo.book}"></td>
								</tr>
								<tr>
									<th>년도</th>
									<td><input class="chk form-control col-sm-6 mb-3 mb-sm-0" type='text' name='lecture_year' value="${vo.lecture_year}"></td>
								</tr>
								<tr>
									<th>학기</th>
									<td><label><input type='radio' name='semester' value="1" ${vo.semester}>1학기</label>
										<label><input type='radio' name='semester' value="2" ${vo.semester}>2학기</label>
									</td>
								</tr>
							</table>
						</form>
						<div>
							<a class='btn btn-primary' onclick="$('form').submit()">저장</a>
							<!-- 	<a class='btn-fill' onclick="$('form').submit()">저장</a> -->
							<a class='btn btn-empty' href='list.lec'>취소</a>
						</div>
						
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
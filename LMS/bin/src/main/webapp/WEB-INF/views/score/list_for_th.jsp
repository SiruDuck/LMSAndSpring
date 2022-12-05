<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='css/score.css?<%=new java.util.Date()%>' type='text/css' rel='stylesheet'> 
</head>
<body>
	<h2>학생 성적 관리</h2>
		<div class="top-menu">
			<div>
			<!-- if 학년조회하고 다시 페이지를 왔을때는 ==> gradeList 바로 실행  -->
				<ul class="search">
					<li>학생명 : <input type="text" id="student_name" /></li>
					<li><select name="lecture_year" id="lecture_year" class="w-px200" >
						<option class="search_list" value="-1">전체 년도</option>
							<c:forEach items="${teacher_years}" var ="vo">
								<option 
								 value="${vo.lecture_year}">${vo.lecture_year}</option>
							</c:forEach>
						</select></li>
				</ul>
			</div>
					<a class = "btn-fill" id="new" href="new.sc"> 성적입력</a>
		</div>

<!-- <table class='table'> -->
<!-- 		<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>학기</th><th>학점</th></tr> -->
<%-- 		<c:forEach items='${list}' var='vo'> --%>
<%-- 		<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.semester}</td><td>${vo.semesterpoint}</td></tr> --%>
<%-- 		</c:forEach> --%>
<!--  		</table> -->

	<div class="avg">
<%-- 		<div class="avg_text">전체 평균 : ${}</div> --%>
		
			<c:forEach items="${avg_teacher_subject}" var = "vo">
				<div class="avg_text ">${vo.lecture_title}(${vo.lecture_num})의 평균 : ${vo.avg_subject}</div>
				<input type="hidden" name="avg_subject" id="avg_subject" value="${vo.avg_subject}"/>
			</c:forEach>
			<div> 현재 페이지 평균 : <span  class="total_avg"></span></div>
	</div>
	
	<div id="data-list">
		<table class='table'>
			<tr>
				<th>강의명</th>
				<th>강의번호</th>
				<th>학생명</th>
				<th>년도</th>
				<th>학기</th>
				<th>학점</th>
				<th>점수</th>
				<th>성적</th>
			</tr>
		<c:forEach items='${list}' var='vo'>
			<tr class='average'>
				<td>${vo.lecture_title}</td>
				<td>${vo.lecture_num}</td>
				<td>${vo.name} (${vo.id})</td>
				<td>${vo.lecture_year}년</td>
				<td>${vo.semester}</td>
				<td class='credit'>${vo.subjectcredit}</td>
				<td class='point'>${vo.semesterpoint}</td>
				<td>${vo.score_name}</td>
				<td><a href="modify.sc?id=${vo.id}&lecture_num=${vo.lecture_num}&name=${vo.name}" class="btn-fill"> 점수 수정</a></td>
			</tr>
		</c:forEach>
		
		</table>
	
	</div>
<script>
$(function(){
	var sum_credit=0, sum_point=0;
	$('.average').each(function(){
		sum_point += Number($(this).children('.credit').text()) * Number($(this).children('.point').text());
		sum_credit += Number($(this).children('.credit').text());
	})
	var average = sum_credit==0 ? '' : (sum_point / sum_credit).toFixed(2);
	$('.total_avg').text( average );
});

$("#student_name").keyup(function(){
	$.ajax({
		url: "search_student_name",
// 		aysnc : false,
		data: {student : $("#student_name").val(), year : $("#lecture_year").val()},
		success : function (res){
			$("#data-list").empty();
			$("#data-list").append(res);
		},error: function(req, text){
			alert(text+':'+req.status);
		}
	});
}); 

$("#lecture_year").change(function(){
			console.log($(this).val());
	$.ajax({
		url: "search_student_name",
// 		aysnc : false,
		data: {student : $("#student_name").val(), year : $("#lecture_year").val()},
		success : function (res){
			$("#data-list").empty();
			$("#data-list").append(res);
		},error: function(req, text){
			alert(text+':'+req.status);
		}
	});
}); 



</script>	

</body>
</html>
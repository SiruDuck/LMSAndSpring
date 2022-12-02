<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
		<input type='hidden' id='average'>
<script>

$(function(){
	var sum_credit=0, sum_point=0;
	$('.average').each(function(){
		sum_point += Number($(this).children('.credit').text()) * Number($(this).children('.point').text());
		sum_credit += Number($(this).children('.credit').text());
	})
	var average = sum_credit==0 ? '' : (sum_point / sum_credit).toFixed(2);
	$('.total_avg').text( average );
})
</script>		
</body>
</html>
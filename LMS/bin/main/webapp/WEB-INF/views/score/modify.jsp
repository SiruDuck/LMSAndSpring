<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='css/score.css?<%=new java.util.Date()%>' type='text/css' rel='stylesheet'> 
</head>
<body>

<h3>성적 수정</h3>
<!-- 	<form action="insert.sc" method="post" onsubmit="event.preventDefault()"> -->
	<form action="update.sc" method="post" >
	<input type="hidden" name = "id"id = "id" value="${vo.id}"/>
	<input type="hidden" name = "lecture_num" id = "lecture_num" value="${vo.lecture_num}"/>
		<div class="insert_form" style="">
			<table class="textform">
				<tr>
					<th>강의번호</th>
						<td>
						${vo.lecture_num} (${vo.lecture_title})
						</td>
				</tr>
				<tr>
					<th>아이디</th>
						<td>
						${vo.id} (${vo.name}) 
						</td>
						
				</tr>
<!-- 				<tr> -->
<!-- 					<th>학기</th> -->
<!-- 						<td> -->
<!-- 						<select name="semester" id="semester" style="width: 220px;"> -->
<%-- 							<option ${vo.semester eq 1 ? 'selected' : '' } --%>
<!-- 							 value="1">1학기</option>					 -->
<%-- 							<option ${vo.semester eq 2 ? 'selected' : '' } --%>
<!-- 							 value="2">2학기</option>					 -->
<!-- 						</select> -->
<!-- 						</td> -->
<!-- 				</tr> -->
				<tr>
					<th>점수 </th>
					<td><input type="text" id="semesterpoint" name = "semesterpoint"  autocomplete="off" value="${vo.semesterpoint}"/></td>
				</tr>
			</table>
		</div>
		<div class='btnSet'>
	<a class='btn-fill submit' >저장</a>
	<a class='btn-fill' id = "delete" >삭제</a>
	<a class='btn-empty' href='list.sc'>취소</a>
</div>
</form>

<script>
// document.addEventListener('keydown', function(event) {
// 	  if (event.keyCode === 13) {
// 	    event.preventDefault();
// 	  };
// 	}, true);
$("#delete").click(function(){
	if(confirm('[${vo.name}]학생의 [${vo.lecture_title}]성적을 삭제 하시겠습니까?\n 경고!! 삭제시 못돌립니다.')) {
		location.href = 'delete.sc?id=${vo.id}&lecture_num=${vo.lecture_num} ';
		alert("[${vo.name}]학생의 [${vo.lecture_title}]성적이 삭제되었습니다");				
	}
});

$('#semesterpoint').keyup(function(e){
	if( e.keyCode==13 )	test();
});
	$(".submit").click(function(){
		test();
	});

	function test(){
		
		if($("#semesterpoint").val() < 0 || $("#semesterpoint").val()>4.5 || $("#semesterpoint").val() == "" || !$.isNumeric($("#semesterpoint").val())){
			alert("점수를 잘못 입력하였습니다");
			$("#semesterpoint").focus();
			return;
		}
		
		if(confirm("수정하시겠습니까?")){
			alert("수정되었습니다");
			$("form").submit();
		}
	}
	
	

</script>

	
</body>
</html>
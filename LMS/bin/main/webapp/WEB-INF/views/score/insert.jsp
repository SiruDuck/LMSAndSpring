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

<h3>성적 등록</h3>
<!-- 	<form action="insert.sc" method="post" onsubmit="event.preventDefault()"> -->
	<form action="insert.sc" method="post" >
		<div class="insert_form" style="">
			<table class="textform">
				<tr>
					<th>강의번호</th>
						<td>
						<select name="lecture_num" id="lecture_num" style="width: 220px;">
							<c:forEach items="${lectureList}"  var = "l" >
								<option value="${l.lecture_num}">${l.lecture_num} ( ${l.lecture_title} )</option>
							</c:forEach>					
						</select>
						</td>
				</tr>
				<tr>
					<th>아이디</th>
						<td>
						<!--  
						<select name="id" id="id" style="width: 220px;">
							<c:forEach items="${student}"  var = "s" >
								<option value="${s.id}">${s.name} ( ${s.id} )</option>
							</c:forEach>					
						</select>
						-->
						 <label>
						  <input type="text" list="list"  name="id"  id="id"  autocomplete="off" placeholder="학생 아이디를 입력하세요"/>
						  <datalist id ="list" style="width: 240px; overflow:scroll; height:200px; ">
					    	<c:forEach items="${student}"  var = "s" >
								<option  value="${s.id}">(${s.name})</option>(${s.name})
							</c:forEach>	
						  </datalist>						
						   
						 </label>
						</td>
				</tr>
<!-- 				<tr> -->
<!-- 					<th>학기</th> -->
<!-- 						<td> -->
<!-- 						<select name="semester" id="semester" style="width: 220px;"> -->
<!-- 							<option value="1">1학기</option>					 -->
<!-- 							<option value="2">2학기</option>					 -->
<!-- 						</select> -->
<!-- 						</td> -->
<!-- 				</tr> -->
				<tr>
					<th>점수 </th>
					<td><input type="text" id="semesterpoint" name = "semesterpoint"  autocomplete="off"/></td>
				</tr>
			</table>
		</div>
		<div class='btnSet'>
	<a class='btn-fill submit' >저장</a>
	<a class='btn-empty' href='list.sc'>취소</a>
</div>
</form>

<script>
// document.addEventListener('keydown', function(event) {
// 	  if (event.keyCode === 13) {
// 	    event.preventDefault();
// 	  };
// 	}, true);

$('#id').keyup(function(e){
	if( e.keyCode==13 )	test();
});
$('#semesterpoint').keyup(function(e){
	if( e.keyCode==13 )	test();
});
	$(".submit").click(function(){
		console.log($("#id").val())
		test();
	});

	function test(){
		
		if($("#id").val() == ""){
			alert("학생을 선택하여 주세요");
			$("#id").focus();
			return;
		}
		
		if($("#semesterpoint").val() < 0 || $("#semesterpoint").val()>4.5 || $("#semesterpoint").val() == "" || !$.isNumeric($("#semesterpoint").val())){
			alert("점수를 잘못 입력하였습니다");
			$("#semesterpoint").focus();
			return;
		}
		
		if( !id_check() ){
			alert("없는 학생 아이디 입니다")
			$("#id").focus();
			return;
		}
		if( ! data_check() ){
			alert("이미 데이터가 있습니다.")
			return;
		}
		if(confirm("저장하시겠습니까?")){
			alert("저장되었습니다");
			$("form").submit();
		}
	}
	
	//이미 데이터가 있는 경우 return
	function data_check(){
		var exist;
		$.ajax({
			url : "insert_data_check",
			async : false,
			data : { num : $("[name=lecture_num]").val(), id : $("[name=id]").val() },
			success : function(res){
				exist = res;
			}, error : function(req, text){
				alert("실패!! " + text+':'+req.status);
			}
		});
		return exist;
	}
	
	//아이디 존재 여부확인
	function id_check(){
		var exist;
		$.ajax({
			url : "insert_id_check",
			async : false,
			data : {id :$("[name=id]").val() },
			success : function(res){
				exist = res;
			},error : function(req, text){
				alert("실패!! " + text+':'+req.status);
			}
		});
		return exist;
	}

</script>

	
</body>
</html>
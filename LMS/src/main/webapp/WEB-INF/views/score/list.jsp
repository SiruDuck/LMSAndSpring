<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='css/score.css?<%=new java.util.Date()%>' type='text/css'
	rel='stylesheet'>

</head>
<body>
<!-- 	<h2 class= "font-weight-bold text-primary">성적 조회</h2> -->
	<div class="card">
		<div>
			<!-- if 학년조회하고 다시 페이지를 왔을때는 ==> gradeList 바로 실행  -->
			<form action="list.sc" method="post">
				<ul class="list-lectures">
					<li class='dataTables_filter search-box'>
					<select class='custom-select custom-select-sm form-control form-control-sm w-px200' 
					name="lecture_num" id="lectureList"  >  <!-- onchange="$('form').submit()" -->
							<option class="search_list" id="all_sub" value="-1">전체 과목</option>
							<c:forEach items="${lectures}" var="vo">
								<option ${lecture_num eq vo.lecture_num ? 'selected' : '' }
									value="${vo.lecture_num}">${vo.lecture_title}</option>
							</c:forEach>
					</select></li>
				</ul>
			</form>
		</div>
		<c:choose>
			<c:when test="${loginInfo.info_cd eq 3}">
				<a class="btn-fill" id="insert_btn" href="insert.sc"> 성적입력</a>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${loginInfo.info_cd eq 1}">
					${vo.teacher_name}
				</c:when>
			<c:when test="${loginInfo.info_cd eq 3}">
					${vo.name}
				</c:when>
		</c:choose>
		<div class="avg">
			<div class="avg_text">전체 평균 : ${avg.avgerage} </div>
			<div id = "current_avg"> 현재 페이지 평균 : <span  class="total_avg"></span></div>
			<div id = "select_avg" style="display: none;"> 선택된 과목 평균 : <span  class="selected_avg"></span></div>
		</div>
		<div class='api mb2'>
			<a>전체 조회</a> <a>년도별 조회</a> <a>선택 조회</a>
		</div>
	</div>

	<!-- <table class='table'> -->
	<!-- 		<tr><th>강의명</th><th>강의번호</th><th>교수명</th><th>학기</th><th>학점</th></tr> -->
	<%-- 		<c:forEach items='${list}' var='vo'> --%>
	<%-- 		<tr><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td><td>${vo.teacher_name}</td><td>${vo.semester}</td><td>${vo.semesterpoint}</td></tr> --%>
	<%-- 		</c:forEach> --%>
	<!--  		</table> -->


	<div class="card-body lec-font table-responsive" id="data-list"><strong>데이터 없음</strong></div>
	<script>
		$("#lectureList").change(function(){
		//	console.log($(this).val());
		//	subject_list($(this).val());
			subject_list( );
		});

		
		$(function() {
			$(".api a").eq(0).trigger("click");
		});

		$(".api a").on('click', function() {
			if ($(this).hasClass("btn-fill"))
				return;
			else {
				$(".api a").removeClass();
				$(this).addClass("btn-fill");
				$(".api a").not($(this)).addClass("btn-empty");
				$("#lectureList option:eq(0)").prop("selected", true);
				
				if ($(this).index() == 0)
					subject_list();
				else if ($(this).index() == 1)
					grade_list();
				else 
					select_list();
			}
		})
		
		//전체 성적조회
		function subject_list() {
			console.log('전체 ' )
			$("#select_avg").css({
				'display' : 'none'
			});
			$("#lectureList").css({
				"display" : "block"
			});
			$("#current_avg").css({
				"display" : "block"
			});
			$("#data-list").empty();
			
// 			$("#all_sub").trigger("click");
// 			$("#lectureList option:eq(0)").prop("selected", true);

			$('#yearList').closest('li').remove();
/*			
			var tag = "<table class='table'>"
					+ "<tr><th>강의명</th><th>강의번호</th>"
					+ "<th>교수명</th>"
					+ "<th>년도</th><th>학기</th><th>학점</th><th>성적</th><th>성적</th></tr>"
					+ "<c:forEach items='${list}' var='vo'>"
					+ "<tr class='average'><td>${vo.lecture_title}</td><td>${vo.lecture_num}</td>"
					+ "<td>${vo.teacher_name}</td><td>${vo.lecture_year}년</td><td>${vo.semester}</td>"
					+ "<td class='credit'>${vo.subjectcredit}</td><td class='point'>${vo.semesterpoint}</td><td>${vo.score_name}</td></tr>"
					+ "</c:forEach>" + "</table>";
			$("#data-list").append(tag);
// 				$("#data-list").append(test);
*/

			$.ajax({
					url:"list/subject",
					data : {lecture_num : $('#lectureList option:selected').val()} ,
					success : function(response){
						$("#data-list").empty();
						var tag = "<table class='table'>"
							+ "<tr><th>강의명</th><th>강의번호</th>"
							+ "<th>교수명</th>"
							+ "<th>년도</th><th>학기</th><th>학점</th><th>성적</th><th>성적</th></tr>";
						$(response).each(function(){
							tag += "<tr class='average'><td>" + this.lecture_title + "</td><td>" + this.lecture_num + "</td>"
								+ "<td>" + this.teacher_name + "</td><td>" + this.lecture_year + "년</td><td>" + this.semester + "</td>"
								+ "<td class='credit'>" + this.subjectcredit + "</td><td class='point'>" + this.semesterpoint + "</td><td>" + this.score_name + "</td></tr>"
						});				
						tag += "</table>";
						$("#data-list").append(tag);
						point_credit_average();
					},error : function(req, text){
						alert(text + ':' + req.status);
					}
				});
			
		}

		// 년도별 성적조회
		function grade_list() {
			$("#select_avg").css({
				'display' : 'none'
			});
			$("#lectureList").css({
				'display' : 'none'
			});
			$("#current_avg").css({
				"display" : "block"
			});
			$("#data-list").empty();
			$.ajax({
				url : "list/grade",
				async : false,
				// 		data : {lecture_num : num} ,
				success : function(response) {
					$("#data-list").append(response);
					$(".list-lectures").append($("#data-list").find('li'));
					$("#data-list").find('li').remove();
				},
				error : function(req, text) {
					alert(text + ':' + req.status);
				}
			});
		}
		
		// 선택 성적조회
		function select_list() {
			$("#select_avg").css({
				'display' : 'block'
			});
			$('#yearList').closest('li').remove();
			$("#lectureList").css({
				'display' : 'none'
			});
			$("#current_avg").css({
				"display" : "none"
			});
			$("#data-list").empty();
			$.ajax({
				url : "list/select",
				async : false,
				// 		data : {lecture_num : num} ,
				success : function(response) {
					$("#data-list").append(response);
					$(".list-lectures").append($("#data-list").find('li'));
					$("#data-list").find('li').remove();
				},
				error : function(req, text) {
					alert(text + ':' + req.status);
				}
			});
		}

		function point_credit_average(){
			var sum_credit=0, sum_point=0;
			$('.average').each(function(){
				sum_point += Number($(this).children('.credit').text()) * Number($(this).children('.point').text());
				sum_credit += Number($(this).children('.credit').text());
			})
			var average = sum_credit==0 ? '' : (sum_point / sum_credit).toFixed(2);
			$('.total_avg').text( average );
		}

	</script>

</body>
</html>
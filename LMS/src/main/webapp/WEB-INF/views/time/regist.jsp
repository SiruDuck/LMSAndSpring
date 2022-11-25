<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
span.btn{
	display:block;
}
.search-box{
	margin:0 1rem 0 0;
}
.table-responsive{
	overflow:hidden;
}
.count-box{
	padding: 0;
    margin-bottom: 1rem;
    max-width: 10%;
}
.btn a{
	text-decoration: none;
}
.datepicker-days .datepicker-months{
	display: none;
}
table th, td{
	color:#5a5c69;
	text-align: center;
}
table th{
	font-weight: 700;
}
</style>
<body>
<!-- <h1 class='h3 mb-2 text-gray-800 font-weight-bold'>수강신청</h1>
<p class='mb-4 font-weight-bold'>수강신청 기간 : 2023.02.14 ~ 2023.02.28</p> -->
<form method='post' action="regist.tt">
<div class='card mb-4 shadow'>
	<div class='card-header py-3'>
		<h6 class='m-0 font-weight-bold text-primary text-lg'>강의 검색</h6>
	</div>
	<div class='card-body d-flex'>
		<div class='dataTables_filter search-box'>		<!-- 과목명 검색 -->
			<input name="lecture_title" id="lecture_title" 
			onkeyup="if(window.event.keyCode==13){$('form').submit()}"
						type="search" class='form-control form-control-sm search_title' placeholder='과목명'
			value="${temp_map.lecture_title }" 
			
			>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm' name="sortation" onchange="$('form').submit()">
				<option value=''${temp_map.sortation eq ''? 'selected' : '' }>구분 전체보기</option>
				<option value='전공필수'${temp_map.sortation eq '전공필수' ? 'selected' : '' }>전공필수</option>
				<option value='전공선택'${temp_map.sortation eq '전공선택' ? 'selected' : '' }>전공선택</option>
				<option value='교양'${temp_map.sortation eq '교양' ? 'selected' : '' }>교양</option>
			</select>
		</div>
		<div class='dataTables_filter search-box'>
			<select class='custom-select custom-select-sm form-control form-control-sm'>
				<option value=''>요일 전체보기</option>				
			</select>
		</div>
	</div>
</div>
<div class="card shadow mb-4">
	<div class="card-header py-3">
	    <h6 class="m-0 font-weight-bold text-primary text-lg">수강 신청</h6>
	</div>
    <div class="card-body">
        <div class="table-responsive">
		 <!-- 수강신청리스트 -->
         <div id="dataTable-wrapper">
         	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
         	   <tr role="row" class='bg-gray-100'>
         	    	<th>과목코드</th>
         	    	<th>과목명</th>
         	    	<th>구분</th>
         	    	<th>담당교수</th>
         	    	<th>강의실</th>
         	    	<th>강의시간</th>
         	    	<th>학점</th>
         	    	<th>강의유형</th>
         	    	<th>상세보기</th>
         	    	<th>강의신청</th>
         	  	</tr>
         	
         	   <c:forEach items="${vo }" var="vo">
         	       <tr>
	       	       	<td>${vo.lecture_num }</td>
	       	           <td>${vo.lecture_title }</td>
	       	           <td>${vo.sortation }</td>
	       	           <td>${vo.teacher_name }</td>
	       	           <td>${vo.lecture_room }</td>
	       	           <td>${vo.lecture_day } [${vo.lecture_time }]</td>
	       	           <td>${vo.subjectcredit }</td>
	       	           <td>${vo.state }</td>
	       	           <td>
	       	           	<span  class=' btn btn-primary btn-icon-split'>
	       	         
							 		<a class='text-white' href='detail.tt?lecture_num=${vo.lecture_num }'>상세보기</a>
					
	       	           
	       	           	</span>
	       	           </td>

	       	           <td>
	                 
	                   	<c:choose>
							<c:when test="${vo.check_flag eq 0 }">
							  	<span class='btn btn-info btn-icon-split'>
								<a class='text-white insert' href="insert.tt?lecture_num=${vo.lecture_num }" onclick="popup()">신청하기</a>
	                   			</span>
	                   		</c:when>
							<c:when test="${vo.check_flag eq 1 }">
								<a class='text-black'>수강 완료</a>
	                   		</c:when>
	                   		<c:when test="${vo.check_flag eq 2 }">
								<a class='text-black'>신청 완료</a>
	                   		</c:when>
	                   		<c:when test="${vo.check_flag eq 3 }">
								<a class='text-black'>정원 초과</a>
	                   		</c:when>
						</c:choose>
	       	           </td>
         	       </tr>
         	   </c:forEach>
         	
         	</table>
         </div>
        
        <!-- 페이지 전환 -->
		<!-- <div class="row">
       		<div class="col-sm-12 col-md-7">
       			<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
       				<ul class="pagination">
       					<li class="paginate_button page-item previous disabled" id="dataTable_previous">
       						<a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
						</li>
						<li class="paginate_button page-item active">
							<a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a>
						</li>
						<li class="paginate_button page-item next" id="dataTable_next">
							<a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
						</li>
					</ul>
				</div>
			</div>
		</div> -->
        </div>
    </div>
</div>
</form>
<script>

$('popup').click(function(){
	alert('신청');
});




</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
</style>

<body>


<div class="container-fluid">
<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2">전체 인원 관리</h1>
<a href="member" class="btn btn-primary btn-icon-split mb-2">
   <span class="icon text-gray-600">
   <i class="fas fa-arrow-right"></i>
   </span>
   
   <span class="text">인원 등록</span>
 </a>
					<div class='card mb-4'>
						<div class='card-header py-3'>
							<h6 class='m-0 font-weight-bold text-primary'>검색</h6>
						</div>
						<div class='card-body d-flex'>
							
							
							<div class='dataTables_filter search-box'>
								<input type="search" class='ids form-control form-control-sm' placeholder='아이디로 검색'>
							</div>
							<div class='dataTables_filter search-box'>
								<input type="search" class='names form-control form-control-sm' placeholder='이름으로 검색'>
							</div>
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm'>
									<option value='department_all'> (학과) 전체</option>
									<c:forEach items="${department_list }" var="department_list">
									<option value='${department_list }'> ${ department_list.department_name}</option>
									</c:forEach>
								</select>
							</div>
							
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm' onchange='$("form").submit()'>
									<option value='info_all' value='-1'> (구분) 전체</option>
									<c:forEach items="${info_list }" var="info">
									<option ${info_cd eq info.info_cd ? 'selected' : ''} 
									value='${info.info_cd }'> ${info.info_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>	
					
					
					
					
					
									
					<div class="dd">
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">전체 인원 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>전화번호</th>
                                            <th>입학일/입사일</th>
                                            <th>학과 코드</th>
                                            <th>학과 명</th>
                                            <th>구분</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.id }</td>
                                            <td>${vo.name }</td>
                                            <td>${vo.phone }</td>
                                            <td>${vo.start_date }</td>
                                            <td>${vo.department_id }</td> 
                                            <td>${vo.department_name }</td> 
                                            <td>${vo.info_name }</td> 
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
					
					
					
					</div>



<script>
$('.names').keyup(function(){
	$.ajax({
		data:{name: $(this).val()},
		url:"search_name",
		success:function(data){
			$('#dataTable_wrapper').html(data);
		}
		
	})
});

$('.ids').keyup(function(){
	$.ajax({
		data:{id: $(this).val()},
		url:"search_id",
		success:function(data){
			$('#dataTable_wrapper').html(data);
		}
		
	})
});



</script>
</body>
</html>
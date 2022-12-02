<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>

<title>공지사항</title>
<style>
.search-box {
	margin: 0 1rem 0 0;
}

.table-responsive {
	overflow: hidden;
}
</style>
</head>
<body>
	<h3>공지사항</h3>
	<form method='post' action='list.no'>
	<input type='hidden' name='curPage' value='1'/>
		<div class='card mb-4'>
			<div class='card-header py-3'>
				<h6 class='m-0 font-weight-bold text-primary'>검색</h6>
			</div>
			<div class='card-body d-flex'>
				<div class='dataTables_filter search-box'>
					<select 
						class='custom-select custom-select-sm form-control form-control-sm'
						name="search">
						
								
						<option value='all' ${page.search eq 'all' ? 'selected' : '' }>전체</option>
						<option value='title' ${page.search eq 'title' ? 'selected' : '' }>제목</option>
						<option value='content' ${page.search eq 'content' ? 'selected' : '' }>내용</option>
						<option value='writer' ${page.search eq 'writer' ? 'selected' : '' }>작성자</option>
					</select>
				</div>
				<div class='dataTables_filter search-box'>
					<input type="search" class='names form-control form-control-sm' placeholder="검색어입력" name="keyword"
						onkeyup="if(window.event.keyCode==13){$('form').submit()}"
					value="${page.keyword}">
				</div>
			</div>
		</div>
	</form>






	<!-- DataTales Example -->
	<div class=" shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">공지사항</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="70%"
					cellspacing="0">
					<thead>
						<tr class="bg-gray-100">
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center; width:250px;">작성일자</th>
							<th style="text-align: center;">첨부</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items='${page.list}' var='vo'>
							<tr >
								<td><a href="info.no?id=${vo.id}">${vo.title }</a></td>
								<td style="text-align: center;">${vo.writer}</td>
								<td style="text-align: center;">${vo.writedate }</td>
								<td style="text-align: center;">${empty vo.filename ? '' : '<i class="font-c fa-solid fa-paperclip"></i>'}</td>
						
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class='info' style="text-align: right; margin-right: 30px;">
				<!-- 직원인 경우만 글쓰기 가능 -->
				<c:if test='${loginInfo.info_cd eq 4 }'>
					<a href='new.no' class='btn btn-primary'>글쓰기</a>
				</c:if>
			</div>
			<div class="row">
				<div class="col-sm-12 col-md-5">
					<div class="dataTables_info" id="dataTable_info" role="status"
						aria-live="polite">${page.beginList} ... ${page.endList}   </div>
				</div>
				<div class="col-sm-12 col-md-7">
					<div class="dataTables_paginate paging_simple_numbers"
						id="dataTable_paginate">
						<ul class="pagination">
							<li class="paginate_button page-item previous  "
								id="dataTable_previous"><a onclick="go_page(1)"
								aria-controls="dataTable" data-dt-idx="0" tabindex="0"
								class="page-link">처음</a></li>
							
						<c:forEach var="no" begin="${page.beginPage}" end="${page.endPage}">
						<c:if test="${no eq page.curPage}"><!-- 현재페이지인 경우 -->
						<li class="paginate_button page-item active"><a href="#"
								aria-controls="dataTable" data-dt-idx="${no}" tabindex="0"
								class="page-link">${no}</a></li>
						</c:if>
						 <c:if test="${no ne page.curPage}"><!-- 현재페이지 아닌 경우 -->
							<li class="paginate_button page-item "><a onclick="go_page(${no})"
								aria-controls="dataTable" data-dt-idx="${no}" tabindex="0"
								class="page-link">${no}</a></li>
						</c:if> 
						</c:forEach>
						
							
						
							<li class="paginate_button page-item next" id="dataTable_next"><a
								onclick="go_page(${page.totalPage})" aria-controls="dataTable" data-dt-idx="7" tabindex="0"
								class="page-link">마지막</a></li>
						</ul>
					</div>
				</div>
			</div>
		
		
		</div>
	</div>


<script type="text/javascript">
function go_page(page){
	$('[name=curPage]').val( page );
	$('[name=keyword]').val( '${page.keyword}' );
	$('form').submit();
}
</script>


</body>
</html>
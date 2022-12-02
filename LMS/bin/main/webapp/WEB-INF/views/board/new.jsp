<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>

</head>
<style>
.btn_blue {
	text-align: center;
}
</style>
<body>
	<h3>자유 게시판 글쓰기</h3>
	
	<form method='post' action='insert.br' enctype='multipart/form-data'>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">자유게시판 글쓰기</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th style="vertical-align: inherit; width: 11rem">제목</th>
								<td><input type="text" name='title' title='제목'
									class='form-control form-control-user'></td>
							</tr>
							<tr>
								<th style="vertical-align: baseline;">내용</th>
								<td><textarea name='content' title="내용"
										class='form-control form-control-user conten'
										style='height: 27rem'></textarea></td>
							</tr>
							<tr>
								<th style="vertical-align: inherit">첨부파일</th>
								<td>
									<div class='align'>
						
										<label> <input type='file' name='file'
											id='attach-file' style='display: contents;'> <a><i
												class="font-b fa-solid fa-file-circle-plus"></i></a>
										</label> <span id='file-name'></span> <span id='preview'></span> <a
											id='delete-file'><i class="font-r fa-solid fa-trash-can"></i></a>
									</div>
								</td>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
		<input type='hidden' name='writer' value='${loginInfo.id }'>
		<input type='hidden' name='name' value='${loginInfo.name }'>
		</form>
	<div class='btn_blue' style='padding: 2rem;'>
		<a class='btn btn-primary' id='save'>저장</a> <a
			class='btn btn-secondary' href='list.br'>취소</a>
	</div>
<script>

$('#save').click(function(){
	if(emptyCheck()) $('form').submit();
});


function emptyCheck(){
	var ok = true;
	$('.chk').each(function(){
		if( $(this).val()=='' ){
			var item = $(this).attr('placeholder')
						? $(this).attr('placeholder') : $(this).attr('title');
			alert(item + ' 입력하세요!');
			$(this).focus();
			ok = false;
			return ok;			
		}
	});
	return ok;
}


</script>	


</body>




</html>
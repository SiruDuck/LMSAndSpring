<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method='post' action='insert.br' enctype='multipart/form-data'>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">수강후기 글쓰기</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th style="vertical-align: inherit; width: 11rem">제목</th>
								<td><input type="text" name='title' title='제목'
									class='form-control form-control-user conten'></td>
							</tr>
							<tr>
								<th style="vertical-align: baseline;">강의 특징</th>
								<td><input type="text" name='title' title='제목'
									class='form-control form-control-user conten' style='height: 13rem'></td>
							</tr>
							<tr>
								<th style="vertical-align: baseline;">강의 장점</th>
								<td><textarea name='content' title="내용"
										class='form-control form-control-user conten'
										style='height: 13rem'></textarea></td>
							</tr>
							<tr>
								<th style="vertical-align: baseline;">강의 단점</th>
								<td><textarea name='content' title="내용"
										class='form-control form-control-user conten'
										style='height: 13rem'></textarea></td>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</form>

	<div class='btn_blue' style='padding: 2rem; text-align: center;'>
		<a class='btn btn-primary' id='insert' style='margin-right: 1rem;'>저장</a>
		<a class='btn btn-secondary' onclick='list.br'>취소</a>
	</div>



</body>
</html>
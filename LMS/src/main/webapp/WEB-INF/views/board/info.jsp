<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/functions' prefix='fn'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>
<style>



</style>

</head>
<style>
.btn {
	padding: 7px;
}
</style>
<body>
	<h3>자유게시판 상세보기</h3>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">자유게시판 안내</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th style="vertical-align: inherit; width: 11rem">제목</th>
							<td colspan="5"><div class='form-control form-control-user'>${vo.title }</div></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><div class='form-control form-control-user'>${vo.name }</div></td>
							<th style="vertical-align: inherit; width: 11rem">작성일자</th>
							<td><div class='form-control form-control-user'>${vo.writedate }</div></td>
							<th style="vertical-align: inherit; width: 11rem">조회수</th>
							<td><div class='form-control form-control-user'>${vo.readcnt }</div></td>
						</tr>
						<tr>
							<th style="vertical-align: baseline;">내용</th>
							<td colspan='5'><div class='form-control form-control-user'
									style='height: 27rem'>${vo.content}</div></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan='5'>
								<div class='form-control form-control-user'>
									<span id='file-name'>${vo.filename}</span>
									<c:if test='${not empty vo.filename }'>
										<a id='download'><i
											class="font-b fa-solid fa-file-arrow-down"></i></a>
									</c:if>
								</div>
							</td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	





	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th style="vertical-align: inherit; width: 11rem; text-align: center;">댓글작성</th>
							<td style="display: flex;"><textarea id='comment' class='form-control form-control-user'></textarea><a href='javascript:regist()' class='btn btn-primary btn-icon-split' id='regist' style="margin-left: 2rem; width: 4rem; align-items: center;">등록</a></td>
<!-- 							  -->
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	<div id = 'comment-list'></div>
	
	
	<div class='btn_blue' style='padding: 2rem; text-align: center;'>
		<a class='btn btn-secondary btn-icon-split' href='list.br'>목록으로</a>
		<c:if test='${loginInfo.id eq vo.writer }'>
			<a class='btn btn-primary btn-icon-split'
				href='modify.br?id=${vo.id}&${hrefParam}'>정보수정</a>
			<a class='btn btn-danger btn-icon-split' id='remove'
				onclick="if(confirm('삭제 할까요?')) location='delete.br?id=${vo.id}'">정보삭제</a>
		</c:if>
	</div>
	
	
	
	
	
	
	
	
	<script>
	$(function(){
		comment_list();
	});
	
	$('#download').click(function(){
		$(this).attr('href'
				, 'download.br?id=${vo.id}&url=' + $(location).attr('href'));
	});
	if( isImage( "${vo.filename}" ) ){
		$('#file-name').after( '<span id="preview"><img src="${vo.filepath}"></span>' );
	}
	
	
	function regist(){
		if( ${empty loginInfo} ){
			alert('댓글을 등록하려면 로그인하세요!');
		}else if( $('#comment').val()=='' ){
			alert('댓글을 입력하세요!');
			$('#comment').focus();
		}else{
			$.ajax({
				url: 'board/comment/insert',
				data: { board_id:${vo.id}, content:$('#comment').val()
						, writer:'${loginInfo.name}' },
				success: function( response ){
					if( response ){
						alert('댓글이 등록되었습니다');
						$('#comment').val('');
						comment_list();
					}else{
						alert('댓글이 등록 실패ㅠㅠ')
					}
				},error: function(req, text){
					alert(text+':'+req.status);
				}
			});
		}
	}

	

	//댓글목록조회
	function comment_list(){
		$.ajax({
			url: 'board/comment/list/${vo.id}',
			//data: { board_id:${vo.id} },
			success: function( response ){
				$('#comment-list').html( response );
			},error: function(req, text){
				alert(text+':'+req.status);
			}
		});
	}

	//목록으로, 수정, 삭제 버튼 클릭시 form 서브밋
	$('#list, #modify, #remove').click(function(){
		$('form').attr('action', $(this).attr('id')+".bo" );
		if( $(this).attr('id')=='remove' ){
			if( confirm('정말 삭제?') ){
				$('form').submit();			
			}
		}else
			$('form').submit();
	});

	//동적으로 만든 이미지태그 클릭시 이미지를 크게 볼수 있도록 처리
	$(document).on('click', '.preview img', function(){
		$('#popup, #popup-background').css('display', 'block');
		$('#popup').append( $(this).clone() );
	});

	//background 클릭시 팝업사라지게
	$('#popup-background').click(function(){
		$('#popup, #popup-background').css('display', 'none');
		$('#popup').empty();
	});

	//다운로드 클릭시
	$('.download').click(function(){
		$('[name=file]').val( $(this).data('file') );
		$('form').attr('action', 'download.bo').submit();
	});



	
	
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">


	<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>   
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>

<title>Insert title here</title>
<style>
	

</style>
</head>
<body>
<h3>회원가입</h3>

<div class='text-right'  style='margin: 10px auto; color: #ff0000'>* 는 필수입력항목입니다</div>
<form method='post' action='join' enctype='multipart/form-data'>
<table class="table table-bordered dataTable">
<tr><th>* 성명</th>
	<td><input type='text' name='name' class='chk form-control col-sm-6 mb-3 mb-sm-0' autofocus></td>
</tr>
<tr><th>* 아이디</th>
	<td><input type='text' name='id' class='chk form-control col-sm-6 mb-3 mb-sm-0'>
		<a class='btn-fill' id='btn-id'>아이디 중복확인</a>
		<div class='valid'>아이디를 입력하세요(영문소문자,숫자만)</div>
	</td>
</tr>
<tr><th>* 비밀번호</th>
	<td><input type='password' name='pw' class='chk form-control col-sm-6 mb-3 mb-sm-0'>
		<div class='valid'>비밀번호를 입력하세요(영문대/소문자,숫자 모두 포함)</div>
	</td>
</tr>
<tr><th>* 비밀번호 확인</th>
	<td><input type='password' name='pw_ck' class='chk form-control col-sm-6 mb-3 mb-sm-0'>
		<div class='valid'>비밀번호를 다시 입력하세요</div>
	</td>
</tr>
<tr><th>* 이메일</th>
	<td><input type='text' name='email' class='chk form-control col-sm-6 mb-3 mb-sm-0'>
		<div class='valid'>이메일을 입력하세요</div>
	</td>
</tr>
<tr><th>* 성별</th>
	<td><label><input type='radio' name='gender' value='남' checked>남</label>
		<label><input type='radio' name='gender' value='여'>여</label>
	</td>
</tr>
<tr><th>프로필이미지</th>
	<td>
		<div class='align'>
		<label>
			<input type='file' name='file' id='attach-file' accept='image/*'>
			<a><i class="font-b fa-regular fa-address-card"></i></a>
		</label>
		<span id='preview'></span>
		<a id='delete-file'><i class="font-r fa-solid fa-trash-can"></i></a>
		</div>
	</td>
</tr>
<tr><th>* 생년월일</th>
	<td><input type='text' name='birth' id='datepicker0' class='date form-control col-sm-6 mb-3 mb-sm-0' readonly>
		<a id='delete'><i class="font-r fa-regular fa-calendar-xmark"></i></a>
	</td>
</tr>
<tr><th>* 전화번호</th>
	<td><input type='text' name='phone' class='date form-control col-sm-6 mb-3 mb-sm-0'></td>
</tr>
<tr><th>* 주소</th>
	<td><a class='btn-fill' id='post'>우편번호찾기</a>
		<input type='text' name='post' class='w-px60 form-control col-sm-6 mb-3 mb-sm-0' readonly>
		<input type='text' name='addr' class='form-control col-sm-6 mb-3 mb-sm-0' readonly>
		<input type='text' name='addr' class='form-control col-sm-6 mb-3 mb-sm-0' >
	</td>
</tr>
<tr><th>학년</th>
	<td><label><input type='radio' name='grade' value='0학년' checked>0학년</label>
		<label><input type='radio' name='grade' value='1학년'>1학년</label>
		<label><input type='radio' name='grade' value='2학년'>2학년</label>
		<label><input type='radio' name='grade' value='3학년'>3학년</label>
		<label><input type='radio' name='grade' value='4학년'>4학년</label>
	</td>
</tr>
<tr><th>* 입학일</th>
	<td><input type="text" name='start_date' id='datepicker1' class='date form-control col-sm-6 mb-3 mb-sm-0' readonly>
		<a id='delete'><i class="font-r fa-regular fa-calendar-xmark"></i></a>
	</td>
</tr>
<tr><th>졸업일</th>
	<td><input type='text' name='end_date' id='datepicker2' class='date form-control col-sm-6 mb-3 mb-sm-0' readonly>
		<a id='delete'><i class="font-r fa-regular fa-calendar-xmark"></i></a>
	</td>
</tr>
<tr><th>* 상태</th>
	<td><label><input type='radio' name='state' value='재학중' checked>재학중</label>
		<label><input type='radio' name='state' value='근무중'>근무중</label>
	</td>
</tr>
<!-- 학과코드 입력시 학과명도 선택되고 들어갈 수 있게 -->
<tr><th>학과코드</th>
	<td><input type='text' name='department_id' class='date form-control col-sm-6 mb-3 mb-sm-0' ></td>
</tr>
<tr><th>학과명</th>
	<td><input type='text' name='department_name' class='date form-control col-sm-6 mb-3 mb-sm-0' ></td>
</tr>
<!-- 구분 선택시 구분명도 선택이 될 수 있게 -->
<tr><th>구분</th>
	<td><label><input type='radio' name='info_cd' value='1' checked>1</label>
		<label><input type='radio' name='info_cd' value='2'>2</label>
		<label><input type='radio' name='info_cd' value='3'>3</label>
		<label><input type='radio' name='info_cd' value='4'>4</label>
	</td>
</tr>
<tr><th>구분명</th>
	<td><input type='text' name='info_name' class='date form-control col-sm-6 mb-3 mb-sm-0' ></td>
</tr>

</table>
</form>
<div class=''>
	<a class='btn btn-primary' id='join'>회원가입</a>
	<a class='btn btn-secondary' onclick='history.go(-1)'>취소</a>
</div>

<script src='js/member.js?<%=new java.util.Date()%>'></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

$('#join').click(function(){
	if( $('[name=name]').val()=='' ){
		alert( '성명을 입력하세요!' );
		$('[name=name]').focus();
		return;
	}
	
	var id = $('[name=id]');
	if( id.hasClass('chked') ){
		//중복확인한 경우
		if( id.siblings('div').hasClass('invalid') ){
			alert('회원가입 불가!\n' + member.id.unUsable.desc);
			id.focus();
			return;
		}
		
	}else{
		//중복확인하지 않은 경우
		//태그의 입력값이 유효한지 확인
		if(  tagIsInValid( id ) )	return;	
		else{
			//입력값은 유효하지만 중복확인하지 않은 경우
			alert('회원가입 불가!\n' + member.id.valid.desc);
			id.focus();
			return;
		}	
	}
	
	if( tagIsInValid( $('[name=pw]') ) )	return;
	if( tagIsInValid( $('[name=pw_ck]') ) )	return;
	
	
	
	$('form').submit();
});

function tagIsInValid( tag ){
	var status = member.tag_status( tag );
	if( status.code=='invalid' ){
		alert('회원가입 불가!\n' +  status.desc);
		tag.focus();
		return true;
	}else
		return false;
}

$('#btn-id').click(function(){
	id_check();	
});

//아이디 중복확인
function id_check(){
	var id = $('[name=id]');
	//이미 중복확인 했다면 다시 확인할 필요없음
	if( id.hasClass('chked') ) return;
		
	var status = member.tag_status( id );
	if( status.code == 'invalid' ){
		alert( '아이디 중복확인 불필요!\n' + status.desc );
		id.focus();
	}else{
		$.ajax({
			url: 'id_check',
			data: { id:id.val() },
			success: function( response ){
				console.log( response )
				//1:사용불가(false), 0:사용가능(true)
				response = response ? member.id.usable : member.id.unUsable;
				id.siblings('div').text( response.desc )
							.removeClass('valid invalid').addClass( response.code );
				id.addClass('chked');
				
			},error: function(req, text){
				alert(text+':'+req.status);
			}
		});		
	}
}



$('.chk').keyup(function( e ){
	//아이디 태그에서 enter인 경우는 중복확인처리
	if( $(this).attr('name')=='id' && e.keyCode==13 ){
		id_check();
	}else{
		$(this).removeClass('chked');
		
		var status = member.tag_status( $(this) );
		$(this).siblings('div').text( status.desc )
					.removeClass('valid invalid').addClass( status.code );
	}
	
});



$('#post').click(function(){
	new daum.Postcode({
        oncomplete: function(data) {
			console.log(data);
        	$('[name=post]').val( data.zonecode );
        	var address = data.userSelectedType=='R' 
        					? data.roadAddress : data.jibunAddress;
			if( data.buildingName != '' ) address += ' (' + data.buildingName + ')';        	
        	$('[name=addr]').eq(0).val( address );
        }
    }).open();
});

var today = new Date();
var range = '1940:' + today.getFullYear();
var range2 = '1991:' + today.getFullYear();
var endDay = new Date( today.getFullYear(), today.getMonth(), today.getDate()-1 );
var endDay2 = new Date( today.getFullYear()-19, today.getMonth(), today.getDate()-1 );



$(function(){
	$('[name=birth]').datepicker({
		yearRange: range,
		maxDate: endDay2
	});
});


$(function(){
	$('[name=start_date]').datepicker({
		yearRange: range2,
		maxDate: endDay
	});
});


$(function(){
	$('[name=end_date]').datepicker({
		yearRange: range2,
		maxDate: endDay
	});
});



$('.date').change(function(){
	$(this).next().css('display', 'inline');
});
$('#delete').click(function(){
	$(this).siblings('.date').val('');
	$(this).css('display', 'none');
});

+$(function(){
	var today = new Date();
	
	
	$.datepicker.setDefaults({
		dateFormat: 'yy/mm/dd',
		changeYear: true,
		changeMonth: true,
		showMonthAfterYear: true,
		monthNamesShort: [ '1월', '2월', '3월', '4월', '5월', '6월'
							, '7월', '8월', '9월', '10월', '11월', '12월' ],
		dayNamesMin: [ '일', '월', '화', '수', '목', '금', '토' ],
		maxDate: new Date(),	
	});
	
	

	
	
	
	//선택한 파일을 미리보기되도록 이미지로 보이게 처리
	$('#attach-file').change(function(){
		console.log( this.files[0] );
		var attached = this.files[0];
		if( attached ){ //선택한 파일이 있는 경우
			$('#file-name').text( attached.name ); //선택한 파일명 보이게
			$('#delete-file').css('display', 'inline'); //삭제버튼 보이게
			
			//미리보기 태그가 있으면 
			if( $('#preview').length > 0 ){
				//해당 파일이 이미지파일인지 확인
				if( isImage( attached.name ) ){
					$('#preview').html( '<img>' );
					var reader = new FileReader();
					reader.onload = function( e ){
						$('#preview img').attr('src', e.target.result );						
					}
					reader.readAsDataURL( attached );
				}else
					$('#preview').html('');
			}	
		}else{
			$('#file-name').text('');		//선택한 파일명 안보이게
			$('#delete-file').css('display', 'none');	//파일삭제 이미지도 안보이게
		}
	});
	
	$('#delete-file').click(function(){
		$('#file-name').text('');		//선택한 파일명 안보이게
		$('#attach-file').val('');		//선택한 file태그를 초기화
		$(this).css('display', 'none');	//파일삭제 이미지도 안보이게
		$('#preview').html('');//첨부된 이미지 미리보기 없애기
	});
	

});




</script>

</body>
</html>
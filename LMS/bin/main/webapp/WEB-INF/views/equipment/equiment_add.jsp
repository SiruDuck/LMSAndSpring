<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>   
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>


</head>
<body>
	<i class="bi bi-check-square-fill"></i>
	<div class="card mb-4">
    <div class="card-header">
    비품 등록
    <button id="submit" style="margin-left: 3rem"  class="btn btn-primary" type="button">
   					<i class="fas fa-check-square"></i>
   	</button>
   	</div>
    <div class="card-body">
    
   		<form id="formId" method="post" action="eqinsert">
   		<div class="input-group">
   		     <input id="equipment" name="equipment" style="margin-right: 3rem;" type="text" class="form-control bg-light border-0 small" placeholder="비품 이름" aria-label="Search" aria-describedby="basic-addon2">
   		     <input id="equipment_num" name="equipment_num" type="text" class="form-control bg-light border-0 small" placeholder="비품 수량" aria-label="Search" aria-describedby="basic-addon2" style="margin-right: 3rem;">
   		     <input id="buy_day" name="buy_day" type="text" class="date form-control bg-light border-0 small" placeholder="구매일" aria-label="Search" aria-describedby="basic-addon2" readonly="readonly" style="margin-right: 3rem;">
   		     <input id="situation" name="situation" type="text" class="form-control bg-light border-0 small" placeholder="기타정보" aria-label="Search" aria-describedby="basic-addon2" style="margin-right: 3rem;">
   		     <input id="price" name="price" type="text" class="form-control bg-light border-0 small" placeholder="가격" aria-label="Search" aria-describedby="basic-addon2" style="margin-right: 3rem;">
   		     
   		     <div class="input-group-append">
   		     </div>
   		 </div>
   	</form>
   	 		
   	</div>
  	</div>
	
<script>

$('#submit').click(function(){
	console.log("서브밋버튼");
	if( $('[name=equipment]').val()==''){
		alert('비품명을 입력하세요!');
		$('[name=equipment]').focus();
		return;
		
	}else if( $('[name=equipment_num]').val()==''){
		
		alert('비품 수량을 입력하세요!');
		$('[name=equipment_num]').focus();
		return;
		
	}else if(isNaN($('[name=equipment_num]').val())){
		alert('비품 수량을 정수값으로 입력하세요!');
		$('[name=equipment_num]').focus();
		return;
	}else if ( $('[name=price]').val()==''){
		alert('가격을 입력해주세요!');
	}else if (isNaN($('[name=price]').val())){
		alert('가격을 정수로 입력해주세요!');
	}else{
		alert('등록되었습니다.');
		$("#formId").attr("action","eqinsert");
		$('#formId').submit();
		
	}
});



$(function(){
	var today = new Date();
	var range = '1950:' + today.getFullYear();
	
	$.datepicker.setDefaults({
		dateFormat: 'yy-mm-dd',
		changeYear: true,
		changeMonth: true,
		showMonthAfterYear: true,
		monthNamesShort: [ '1월', '2월', '3월', '4월', '5월', '6월'
							, '7월', '8월', '9월', '10월', '11월', '12월' ],
		dayNamesMin: [ '일', '월', '화', '수', '목', '금', '토' ],
		maxDate: new Date(), 
		yearRange: range		
	});
	
	
	$('[name=buy_day]').datepicker({
// 		maxDate: endDay,
	});
});
</script>
</body>
</html>
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
    비품 수정
    <button id="modi_submit" style="margin-left: 3rem; margin-right: 2rem;" class="btn btn-primary" type="button">
   					<i class="fas fa-check-square"></i>
   	</button>
   	비품 삭제
   	<button id="delete" style="margin-left: 3rem"  class="btn btn-danger" type="button">
   					<i class="fas fa-trash"></i>
   	</button>
   	</div>
    <div class="card-body">
    
   		<form id="mformId" method="post" action="eqmodify">
   		<div class="input-group">
   		     <input id="equipment" name="mequipment" style="margin-right: 3rem;" type="text" class="form-control bg-light border-0 small" placeholder="비품 이름" aria-label="Search" aria-describedby="basic-addon2" readonly="readonly">
   		     <input id="equipment_num" name="mequipment_num"  type="text" class="form-control bg-light border-0 small" placeholder="비품 수량" aria-label="Search" aria-describedby="basic-addon2" style="margin-right: 3rem;">
   		     <input id="buy_day" name="mbuy_day"  type="text" class="date form-control bg-light border-0 small" placeholder="구매일" aria-label="Search" aria-describedby="basic-addon2" readonly="readonly" style="margin-right: 3rem;">
   		     <input id="price" name="mprice"  type="text" class="form-control bg-light border-0 small" placeholder="가격" aria-label="Search" aria-describedby="basic-addon2" style="margin-right: 3rem;">
   		     <input id="situation" name="msituation" type="text" class="form-control bg-light border-0 small" placeholder="기타정보" aria-label="Search" aria-describedby="basic-addon2" style="margin-right: 3rem;">
   		     <div class="input-group-append">
   		     </div>
   		 </div>
   	</form>
   	 		
   	</div>
  	</div>
	
<script>

$('#modi_submit').click(function(){
	if( $('[name=mequipment]').val()==''){
		alert('비품명을 입력하세요!');
		$('[name=mequipment]').focus();
		return;
		
	}else if( $('[name=mequipment_num]').val()==''){
		
		alert('비품 수량을 입력하세요!');
		$('[name=mequipment_num]').focus();
		return;
		
	}else if(isNaN($('[name=mequipment_num]').val())){
		alert('비품 수량을 정수값으로 입력하세요!');
		$('[name=mequipment_num]').focus();
		return;
	}else if ( $('[name=mprice]').val()==''){
		alert('가격을 입력해주세요!');
	}else{
		alert('수정되었습니다.');
		$("#mformId").attr("action","eqmodify");
		$('form').submit();
		
	}
});


$('#delete').click(function(){
	if(confirm("정말 삭제하시겠습니까?")==true){
		$("#mformId").attr("action","eqdelete");
		$('#mformId').submit();
	}else{
		return false;
	}

});



</script>
</body>
</html>
/**
 * 공통으로 사용할 함수들
 */

//input 태그에 입력값이 있는지 확인
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








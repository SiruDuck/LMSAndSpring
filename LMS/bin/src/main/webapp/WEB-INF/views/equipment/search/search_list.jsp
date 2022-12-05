<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>비품 이름</th>
                                            <th>수량</th>
                                            <th>구매일</th>
                                            <th>구입가격(개당)</th>
                                            <th>비고 사항</th>
                                            <th style="width: 150px;"></th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.equipment }</td>
                                            <td>${vo.equipment_num }</td>
                                            <td>${vo.buy_day }</td>
                                            <td>${vo.price }</td>
                                            <td>${vo.situation }</td>
                                            <td>
	                                            <a id="modi" class="btn btn-secondary btn-icon-split" style="float: right;" >
		                                        	<span class="icon text-white-50">
		                                            <i class="fas fa-arrow-right"></i>
		                                        	</span>
		                                        	<span class="text">변경</span>
	                                    		</a>
                                            </td>
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>
                          
<script>

$('.eqname').keyup(function(){
	$.ajax({
		data:{name: $(this).val()},
		url:"eqnamelist",
		success:function(data){
			$('#dataTable_wrapper').html(data);
		}
		
	})
});

function equiment_add (){
	document.getElementById('eqmodify').style.display='none';
	document.getElementById('eqadd').style.display='block';
	
	
}

$('.btn-secondary').click(function(){
	document.getElementById('eqmodify').style.display='block';
	document.getElementById('eqadd').style.display='none';
	var $tr = $(this).closest('tr');
	$('[name=mequipment]').val(  $tr.children('td').eq(0).text() );
	$('[name=mequipment_num]').val(  $tr.children('td').eq(1).text() );
	$('[name=mbuy_day]').val(  $tr.children('td').eq(2).text() );
	$('[name=mprice]').val(  $tr.children('td').eq(3).text() );
	$('[name=msituation]').val( $tr.children('td').eq(4).text());
// 	= $tr.children('td').eq(0);
	$('[name=mequipment_num]').focus();
});

/* $('#modi').  click(function(){
	alert("dd");
	$('#fo').focus();
	
}); */


$('.names').keyup(function(){
	$.ajax({
		data:{name: $(this).val()},
		url:"eqnamelist",
		success:function(data){
			$('#dataTable_wrapper').html(data);
		}
		
	})
});

</script>                          
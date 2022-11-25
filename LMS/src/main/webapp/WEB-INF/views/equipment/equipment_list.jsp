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
<h1 class="h3 mb-2 text-gray-800 mt-2 mb-2" >교재 및 비품관리</h1>
<a onclick='equiment_add()' id="btnopen" class="btn btn-primary btn-icon-split mb-2">
   <span class="icon text-gray-600">
   <i class="fas fa-arrow-right"></i>
   </span>
   <span class="text">비품 등록</span>
</a>
		
		<div class="mt-3" id="eqadd" style="display: none;">
		<%@ include file="equiment_add.jsp" %>
		</div> 
		<div class="mt-3" id="eqmodify" style="display: none;">
		<%@ include file="equiment_modify.jsp" %>		
		</div> 
		
		
		
					<div class='card mb-4'>
						<div class='card-header py-3'>
							<h6 class='m-0 font-weight-bold text-primary'>검색</h6>
						</div>
						<div class='card-body d-flex'>
							<div class='dataTables_filter search-box'>
								<input type="search" class='eqname names form-control form-control-sm' placeholder='이름으로 검색'>
						</div>
						</div>
					</div>	
					
					

									
					<div class="dd">
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">비품 관리</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
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
                            </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
					
					
					
					</div>

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


</body>
</html>
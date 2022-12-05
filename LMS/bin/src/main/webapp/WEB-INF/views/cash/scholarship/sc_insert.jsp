<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>장학 등록</h3>
	
	<div class="dd">
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 style="padding-top: 10px;"  class="m-0 font-weight-bold text-primary">장학금 등록
						  <button href="category=scholarship#" onclick="closesch()" id="delete close"
						   style="margin-left: 1rem; height: 25px;
						    padding-bottom: 30px; " 
						     class="btn btn-danger" type="button"  onclick="closesch()">닫기</button>
						   	</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <div id='dataTable_wrapper' class='dataTables_wrapper dt-bootstrap4'>
                             <div class='card-body d-flex'>
							
							
							<!-- 아이디로 검색 -->
							<div class='dataTables_filter search-box'>
								<input type="search" class='ids form-control form-control-sm' placeholder='학과 입력'>
							</div>
							
							<!-- 이름으로 검색 -->
							<div class='dataTables_filter search-box'>
								<input type="search" class='names form-control form-control-sm' placeholder='이름 입력'>
							</div>
							
							<!-- 직책으로 검색 -->
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm'>
									<option value='department_all'>장학 정보</option>
									
								</select>
							</div>
							
							<!-- 수당으로 검색 -->
							<div class='dataTables_filter search-box'>
								<select class='custom-select custom-select-sm form-control form-control-sm' onchange='$("form").submit()'>
									<option value='info_all' value='-1'> 장학 유형</option>
									
								</select>
							</div>
							
							<button id="submit" style="margin-left: 3rem"  class="btn btn-primary" type="button">
   								<i class="fas fa-check-square"></i>
   							</button>
                             
                             
                                
                            </div>
                            </div>
                        </div>
                    </div>
                </div><!-- container-fluid -->
				
			</div>	

	<script>
	
	const sidePane = document.querySelector("#menub");

	function openadd(){
		console.log("열기");
		sidePane.classList.remove("d-none");
		sidePane.classList.add("show");
		// sidePane.classList.toggle("d-none"); 토글기능
	}

	function closesch(){
		console.log("닫음");
		sidePane.classList.remove("show");
		sidePane.classList.add("d-none");
	}
	
	
	</script>
</body>
</html>
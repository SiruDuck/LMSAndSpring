<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.table th:nth-child(1) {
	width:6rem;
}
.table th:nth-child(2) {
	width:12rem;
}
.table th:nth-child(3) {
	width:12rem;
}
.table th:nth-child(4) {
	width:12rem;
}
.table th:nth-child(5) {
	width:12rem;
}
.table th:nth-child(6) {
	width:12rem;
}
.table td:nth-child(1) {
	text-align: center;
}
table{
	text-align: center;
}
thead th, tbody td{
	color:#5a5c69;
}
table th{
	font-weight: 700;
}
table tr td{
	height: 73px; 
}
</style>
</head>
<body>
<body id="page-top">


                
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary text-lg">My Schedule</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr class='bg-gray-100'>
                        <th>강의시간</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                    </tr>
                </thead>
                <tbody>        
                                            	
                    <tr>
                        <td>1교시<br> (09:00~09:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2교시<br> (10:00~10:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>3교시<br>(11:00~11:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>4교시<br> (12:00~12:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5교시<br> (14:00~14:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>6교시<br> (15:00~15:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>7교시<br> (16:00~16:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>8교시<br> (17:00~17:50)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>                                        
                </tbody>
            </table>
        </div>
    </div>
</div>
                
                <!-- /.container-fluid -->

           
            <!-- End of Main Content -->            

            <!-- Footer -->
            <!-- <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer> -->
            <!-- End of Footer -->

        
        <!-- End of Content Wrapper -->

    
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

	

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

	<script>
	$(function(){
		

		<c:forEach items='${table_vo}' var='vo'>
			<c:set var='row' value='${vo.lecture_time}' />
			<c:choose>
				<c:when test="${vo.lecture_day eq '월'}"><c:set var='col' value='1' /></c:when>
				<c:when test="${vo.lecture_day eq '화'}"><c:set var='col' value='2' /></c:when>
				<c:when test="${vo.lecture_day eq '수'}"><c:set var='col' value='3' /></c:when>
				<c:when test="${vo.lecture_day eq '목'}"><c:set var='col' value='4' /></c:when>
				<c:when test="${vo.lecture_day eq '금'}"><c:set var='col' value='5' /></c:when>
			</c:choose>
			$('table#dataTable tr:eq(${row}) td:eq(${col})').html( '${vo.lecture_title}<br>(${vo.lecture_room})' );

		</c:forEach>
		
	});	
	
	</script>
	

</body>
</html>
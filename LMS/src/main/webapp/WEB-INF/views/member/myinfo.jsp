<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js'></script>

</head>
<style>
.profile {
 	max-width: 15rem;
    height: 15rem;
    a
}


li{list-style-type: none; }

li > img {
	align-items: center;
}

.container-fluid {
	text-align: -webkit-center;
}
</style>
<body>
	<h3 style="text-align: initial;">내 정보</h3>
	<!-- DataTales Example -->
	<div class="card shadow mb-4" style="width:80%;">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">My info</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<div style="text-align: center;padding: 2rem;">
				<c:choose>
				<c:when test="${empty vo.profile}">
				<li><i class="profile font-profile fa-regular fa-circle-user"></i></li>
				</c:when>
				<c:otherwise>
				<li><img style='border-radius: 70%;' class='profile' src='${vo.profile}' ></li>
				</c:otherwise>
				</c:choose>
				</div>
				
				
				
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th class="bg-gray-100">이름</th>
							<td><div>${vo.name }</div></td>
							<th class="bg-gray-100" style="vertical-align: inherit;">성별</th>
							<td><div>${vo.gender }</div></td>
							<c:if test='${vo.info_name eq "관리자" }'>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">직위</th>
							<td><div>관리자</div></td>
							</c:if>
							<c:if test='${vo.info_name eq "교수" }'>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">직위</th>
							<td><div>교수</div></td>
							</c:if>
							<c:if test='${vo.grade eq "1학년" }'>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">학년</th>
							<td><div>1학년</div></td>
							</c:if>
							<c:if test='${vo.grade eq "2학년" }'>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">학년</th>
							<td><div>2학년</div></td>
							</c:if>
							<c:if test='${vo.grade eq "3학년" }'>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">학년</th>
							<td><div>3학년</div></td>
							</c:if>
							<c:if test='${vo.grade eq "4학년" }'>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">학년</th>
							<td><div>4학년</div></td>
							</c:if>
							
						</tr>
						<tr>
							<th class="bg-gray-100">입학일</th>
							<td><div>${vo.start_date }</div></td>
							<th class="bg-gray-100" style="vertical-align: inherit;">졸업일</th>
							<td><div>${vo.end_date }</div></td>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">학과명</th>
							<td><div>${vo.department_name }</div></td>
						</tr>
						<tr>
							<th class="bg-gray-100">생일</th>
							<td><div>${vo.birth }</div></td>
							<th class="bg-gray-100" style="vertical-align: inherit;">핸드폰 번호</th>
							<td><div>${vo.phone }</div></td>
							<th class="bg-gray-100" style="vertical-align: inherit; width: 11rem">이메일</th>
							<td><div>${vo.email }</div></td>
						</tr>
						<tr>
							<th class="bg-gray-100">주소</th>
							<td colspan="5">
								<div>${vo.post }</div>
								<div>${vo.addr }</div>
							</td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<c:choose>
	<c:when test="${loginInfo.info_cd eq 1}">
		<c:import url="/WEB-INF/views/include/navbar.jsp"/>
	</c:when>
	<c:when test="${loginInfo.info_cd eq 2}">
		<c:import url="/WEB-INF/views/include/staff_navbar.jsp"/>
	</c:when>
	<c:when test="${loginInfo.info_cd eq 3}">
		<c:import url="/WEB-INF/views/include/teacher_navbar.jsp"/>
	</c:when>
	<c:when test="${loginInfo.info_cd eq 4}">
		<c:import url="/WEB-INF/views/include/admin_navbar.jsp"/>
	</c:when>
	<c:otherwise>
		<c:import url="/WEB-INF/views/include/navbar.jsp"/>
	</c:otherwise>
</c:choose>	
</html>




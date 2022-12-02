<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
<tr role="row" class='bg-gray-100'>
 	<th>과목코드</th>
 	<th>과목명</th>
 	<th>구분</th>
 	<th>담당교수</th>
 	<th>강의실</th>
 	<th>강의시간</th>
 	<th>학점</th>
 	<th>강의유형</th>
 	<th>상세보기</th>
 	<th>강의신청</th>
</tr>

<c:forEach items="${list}" var="vo">
    <tr>
    	<td>${vo.lecture_num }</td>
        <td>${vo.lecture_title }</td>
        <td>${vo.sortation }</td>
        <td>${vo.teacher_name }</td>
        <td>${vo.lecture_room }</td>
        <td>${vo.lecture_time }교시 (${vo.lecture_day })</td>
        <td>${vo.subjectcredit }</td>
        <td>${vo.state }</td>
        <td>
        	<span  class=' btn btn-primary btn-icon-split'>
        		<a class='text-white' href='detail.tt?lecture_num=${vo.lecture_num }'>상세보기</a>
        	</span>
        </td>
        <td>
        	<span  class=' btn btn-info btn-icon-split'>
        		<a class='text-white'>신청하기</a>
        	</span>
        </td>
    </tr>
</c:forEach>

</table>

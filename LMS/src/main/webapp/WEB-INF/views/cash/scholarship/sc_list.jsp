<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% Date nowTime = new Date();
	SimpleDateFormat day = new SimpleDateFormat("YYYY년"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<a onclick="openadd()" id="btnopen opener" class="btn btn-primary btn-icon-split mb-2">

   <span class="icon text-gray-600">
   <i class="fas fa-arrow-right"></i>
   </span>
   <span class="text">장학 등록</span>
</a>

<table class="table table-bordered mt-1" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>아이디</th>
                                            <th>이름</th>
                                            <th>학과</th>
                                            <th>학년</th>
                                            <th>상태</th>
                                            <th>입학일</th>
                                            <th>졸업일</th>
                                            <th>장학</th>
                                            <th>장학정보</th>
                                            <th>입금일</th>
                                            <th style="background-color: #dde1eb">장학금</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${scholarship_list }" var="vo" >
                                        <tr>
                                      		<td>${vo.id }</td>
                                            <td >${vo.name }</td>
                                            <td>${vo.department_name }</td>
                                            <td>${vo.grade }</td>
                                            <td>${vo.state }</td> 
                                            <td>${vo.start_date }</td> 
                                            <td>${vo.end_date }</td> 
                                            <td>${vo.cash_name }</td> 
                                            <td>${vo.description }</td> 
                                            <td>${vo.payment_day }</td> 
                                            <td style="background-color: rgb(248,249,252)"><fmt:formatNumber value="${vo.price }" pattern="#,###.##"/></td>
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>    
  
    
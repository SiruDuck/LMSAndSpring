<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% Date nowTime = new Date();
	SimpleDateFormat day = new SimpleDateFormat("YYYY년"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>입금일</th>
                                            <th>학번</th>
                                            <th>이름</th>
                                            <th>학과</th>
                                            <th>학년</th>
                                            <th>상태</th>
                                            <th>입학일</th>
                                            <th>졸업일</th>
                                            <th>등록금 내역</th>
                                            <th style="background-color: #dde1eb">등록금</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${tuition_list }" var="tuition_list" >
                                        <tr>
                                      		<td>${tuition_list.payment_day }</td>
                                            <td >${tuition_list.id }</td>
                                            <td>${tuition_list.name }</td>
                                            <td>${tuition_list.department_name }</td>
                                            <td>${tuition_list.grade }</td> 
                                            <td>${tuition_list.state }</td> 
                                            <td>${tuition_list.start_date }</td> 
                                            <td>${tuition_list.end_date }</td> 
                                            <td>${tuition_list.description }</td> 
                                            <td style="background-color: rgb(248,249,252)"><fmt:formatNumber value="${vo.price}" pattern="#,###.##"/></td> 
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>    
    
    
    
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
                                        	<th>지급일</th>
                                            <th>사번</th>
                                            <th>이름</th>
                                            <th>학과</th>
                                            <th>직책</th>
                                            <th>입사일</th>
                                            <th>월급 세부사항</th>
                                            <th>세전금액</th>
                                            <th>국민연금</th>
                                            <th>건강보험</th>
                                            <th>장기요양</th>
                                            <th>고용보험</th>
                                            <th style="background-color: #dde1eb">실수령액</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${salary_list }" var="vo" >
                                        <tr>
                                      		<td>${vo.payment_day }</td>
                                            <td >${vo.id }</td>
                                            <td>${vo.name }</td>
                                            <td>${vo.department_name }</td>
                                            <td>${vo.info_name }</td> 
                                            <td>${vo.start_date }</td> 
                                            <td>${vo.description }</td> 
                                            <td><fmt:formatNumber value="${vo.price}" pattern="#,###.##"/></td> 
                                            <td><fmt:formatNumber value="${vo.tax_a }" pattern="#,###.##"/></td> 
                                            <td><fmt:formatNumber value="${vo.tax_b }" pattern="#,###.##"/></td>
                                            <td><fmt:formatNumber value="${vo.tax_c }" pattern="#,###.##"/></td>
                                            <td><fmt:formatNumber value="${vo.tax_d }" pattern="#,###.##"/></td>
                                            <td style="background-color: rgb(248,249,252)"><fmt:formatNumber value="${vo.nowprice }" pattern="#,###.##"/></td>
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>    
    
    
    
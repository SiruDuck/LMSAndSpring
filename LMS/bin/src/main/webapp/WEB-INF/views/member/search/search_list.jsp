<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
    
	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>전화번호</th>
                                            <th>입학일/입사일</th>
                                            <th>학과 코드</th>
                                            <th>학과 명</th>
                                            <th>구분</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.id }</td>
                                            <td>${vo.name }</td>
                                            <td>${vo.phone }</td>
                                            <td>${vo.start_date }</td>
                                            <td>${vo.department_id }</td> 
                                            <td>${vo.department_name }</td> 
                                            <td>${vo.info_name }</td> 
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<script src='https://code.jquery.com/jquery-3.6.1.min.js'></script> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <title></title>

    <!-- Custom fonts for this template-->
    <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>    
<ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style='background-color: #183691'>

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href=''>
                <div class="sidebar-brand-icon ">
                    <img src="resources/images/mainlogin/logo_white_eng.png" style='width:4rem'>
                </div>
                <div class="sidebar-brand-text mx-3  font-weight-bold">
                	<!-- <img src="resources/images/mainlogin/logo_white_kr.png" style='width:5rem'> -->
                	영문대학교
                </div>
            </a>
            <!-- <a class="sidebar-brand d-flex align-items-center justify-content-center" href="http://localhost/lms/">
            	<div class="sidebar-brand-text mx-3">영문대학교 <sup>LMS</sup></div>
            </a> -->

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <!-- <li class="nav-item active">
                <a class="nav-link" href="#">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>김영문</span>
                   </a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading mt-3 mb-2">
                My Page 
            </div>

			<li class="nav-item">
                <a class="nav-link" href="myinfo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>내정보</span></a>
           	</li>
           		
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>강의관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">

                        <h6 class="collapse-header">마이페이지</h6>
                        <a class="collapse-item" href="myinfo">내 정보</a>
                        <h6 class="collapse-header" >내 강의관리</h6>
                        <a class="collapse-item" href="list.lec">강의 조회</a>
                        <a class="collapse-item" href="student_lec_list.lec">내 강의 조회</a>
                        <a class="collapse-item" href="main.tt">시간표 보기</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="list.sc">
                    <i class="fas fa-fw fa-table"></i>
                    <span>성적 조회</span></a>
           	</li>

			
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="regist.tt">
                    <i class="fas fa-check fa-fw"></i>
                    <span>수강신청</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                게시판
            </div>
			<li class="nav-item">
                <a class="nav-link" href="list.br">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>자유게시판</span></a>
            </li>
            

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="list.no">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>공지사항</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="http://www.jobkorea.co.kr">
                    <i class="fas fa-fw fa-table"></i>
                    <span>취업정보</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


            
            

        </ul>
        
        
        
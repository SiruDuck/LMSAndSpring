<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<style>
.notice a{
	text-decoration: none;
}
.card{
	box-shadow: 2px 1px 10px 1px rgba(0,0,0,0.2);
}
@font-face {
    font-family: 'SEBANG_Gothic_Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2104@1.0/SEBANG_Gothic_Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
h6{
	font-family: 'SEBANG_Gothic_Bold';
}
.main_img{
	width:100%;
	height:470px;
	background: url("resources/introimg/indeximg.png") no-repeat ;
	margin-bottom: 2rem;
}
.slog{
	font-size: 80px;
	position: absolute;
	font-family: 'SEBANG_Gothic_Bold';
	color: white;
	left: 70rem;
	text-shadow:  2px 2px 2px rgba(0,0,0,0.2);
}
.r2{
	top: 15rem;
}

.r3{
	margin-left: 350px !important;
	top: 30rem;
}

.pointer {position:absolute; width:50px; height:50px; border-radius:50px; background:white; transition:all 0.6s ease-out}

.ss{ transition: cubic-bezier(.75,.32,.8,.44)}
</style>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id ="wrap" class="main_img " >
		<div class= "ss">
			<div class="slog r1"> 가치를 창출하는 대학,</div>
			<div class="slog r2"> 함께 성장해가는 대학,</div>
			<div class="slog r3"> 영문대학교 </div>	
		</div>
	<span class='pointer'>	
	</span>
</div>

<!-- carousel -->

<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" style='margin:2rem 0 5rem 0'>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="250" src="resources/images/mainlogin/index_banner1.jpg" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
    <div class="carousel-item">
      <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="250" src="resources/images/mainlogin/index_banner2.jpg" role="img" aria-label="Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
    <div class="carousel-item">
     <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="250" src="resources/images/mainlogin/index_banner3.jpg" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
    <div class="carousel-item">
     <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="250" src="resources/images/mainlogin/index_banner4.jpg" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"></img>

    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- lecture or event -->
<div class="card " style='margin-bottom:5rem;'>
    <!-- Card Header - Dropdown -->
    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between"style='background-color: #fff; border-left: 1rem solid #5F9DF7;'>
        <h6 class="m-0 font-weight-bold text-lg text-dark">이번 달 특강 & 이벤트</h6>
        <div class="dropdown no-arrow">
            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <i class="fas fa-plus text-dark"></i>
            </a>
        </div>
    </div>
    <!-- Card Body -->
    <div class="card-body"  style='border-left: 1rem solid #5F9DF7;'>
        <div class="text-center">
            <a href=''><img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 18rem; float:left;" src="resources/images/mainlogin/event1.png"></a>
            <a href=''><img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 18rem; float:left;" src="resources/images/mainlogin/event2.png"></a>
            <a href=''><img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 18rem; float:left;" src="resources/images/mainlogin/event3.png"></a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <!-- Default Card Example -->
        <div class="card" style='margin-bottom:5rem;'>
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between " style='background-color:#fff; border-left: 1rem solid #dc3545;'>
                <h6 class="m-0 font-weight-bold text-dark text-lg">공지사항</h6>
                <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    	<i class="fas fa-plus text-dark"></i>
                        <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
                    </a>                    
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body notice" style='border-left: 1rem solid #dc3545;'>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-genderless mr-2' style='color:#dc3545;'></i>
                	<a href='' class='text-gray-900'>도서관 리모델링 공사</a>
                </div>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-genderless mr-2' style='color:#dc3545;'></i>
                	<a href='' class='text-gray-900'>기숙사 리모델링 공사</a>
                </div>
                <div class='ml-3'>
                	<i class='fas fa-genderless mr-2' style='color:#dc3545;'></i>
                	<a href='' class='text-gray-900'>학생식당 리모델링 공사</a>
                </div>
            </div>
        </div>
        
        <div class="card mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style='background-color: #fff; border-left: 1rem solid #fd7e14;'>
                <h6 class="m-0 font-weight-bold text-lg text-dark">질문 게시판</h6>
                <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    	<i class="fas fa-plus text-dark"></i>
                        <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
                    </a>                    
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body notice " style='border-left: 1rem solid #fd7e14'>
                <div class='mb-3 ml-3'>   
                	<i class='fas fa-question mr-2' style='color:#fd7e14;'></i>             	
                	<a href='' class='text-gray-900'>질문있어요</a>
                </div>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-question mr-2' style='color:#fd7e14;'></i>             	
                	<a href='' class='text-gray-900'>질문있어요</a>
                </div>
                <div class='ml-3'>
                	<i class='fas fa-question mr-2' style='color:#fd7e14;'></i>             	
                	<a href='' class='text-gray-900'>질문있어요</a>
                </div>
            </div>
        </div>

        

    </div>

    <div class="col-lg-6">
		<div class="card " style='margin-bottom:5rem;'>
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style='background-color: #fff; border-left: 1rem solid #f6c23e;'>
                <h6 class="m-0 font-weight-bold text-dark text-lg">커뮤니티</h6>
                <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    	<i class="fas fa-plus text-dark"></i>
                        <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
                    </a>                    
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body notice" style='border-left: 1rem solid #f6c23e;'>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-comment-dots text-warning mr-2'></i>
                	<a href='' class='text-gray-900 font-weight-bold'>개교기념일 왜 일요일임??</a>
                </div>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-comment-dots text-warning mr-2'></i>
                	<a href='' class='text-gray-900 font-weight-bold'>학교근처 맛집 추천받는다</a>
                </div>
                <div class='ml-3'>
                	<i class='fas fa-comment-dots text-warning mr-2'></i>
                	<a href='' class='text-gray-900 font-weight-bold'>학식 맛집이네</a>
                </div>
            </div>
        </div>
        
        <div class="card mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" style='background-color: #fff; border-left: 1rem solid #30632f;'>
                <h6 class="m-0 font-weight-bold text-dark text-lg">취업정보</h6>
                <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    	<i class="fas fa-plus text-dark"></i>
                        <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
                    </a>                    
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body notice" style='border-left: 1rem solid #30632f;'>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-info-circle mr-2' style='color:#30632f;'></i>
                	<a href='' class='text-gray-900'>기업 설명회 희망 참가자 모집</a>
                </div>
                <div class='mb-3 ml-3'>
                	<i class='fas fa-info-circle mr-2' style='color:#30632f;'></i>
                	<a href='' class='text-gray-900'>자기소개서 양식 자료</a>
                </div>
                <div class='ml-3'>
                	<i class='fas fa-info-circle mr-2' style='color:#30632f;'></i>
                	<a href='' class='text-gray-900'>면접의상 대여실 리스트</a>
                </div>
            </div>
        </div>
        
    </div>
</div>


<script>
var pointSize = $(".pointer").width()/2;
$("#wrap").mousemove(function(e){    
    $('.pointer').css("top", e.pageY-pointSize);
    $('.pointer').css("left", e.pageX-pointSize);
    $('.pointer').fadeIn();
    
});
$("#wrap").on("mouseleave", function(){
  $('.pointer').fadeOut();
});


var point= $(".ss").width()/2;
$("#wrap").mousemove(function(e){
	 $('.ss').css("top", e.pageY-pointSize);
	 $('.ss').css("left", e.pageX-pointSize);
	 $('.ss').fadeIn();
})
$("#wrap").on("mouseleave", function(){
  $('.ss').fadeOut();
});
</script>

</body>
</html>
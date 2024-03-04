<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GroupMain</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- 캐러샐 추가 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style type="text/css">

/* 기본 공통 CSS */

*
{
	font-family: 라인Seed;
	font-weight: bold;
}

h3
{
	background-color: white;
	padding: 10px;
	border-bottom: 1px solid #ff8000;
	border-top: 1px solid #ff8000;
	color: #ff8000 !important;
}

.left
{
	margin: 10px;
	text-align: center;
}

.center
{
	padding: 5px;
	margin: 10px;
}

.center hr
{
	border: 0;
    border-top: 1px solid #213245;
}

.button:hover
{
	border: solid 2px #ff8000;
	border-radius: 5px;
	color: #ff8000;
	background-color: white;
	padding: 8px;
}

.button
{
	border: solid 2px #ffffff;
	border-radius: 5px;
	color: #ffffff;
	background-color: #ff8000;
	padding: 8px;
	
}

/* footer CSS */

.footer
{
	width:100%;
	text-align: center;
	
}

.footer a
{
	padding: 20px;
	margin: 10px;
}

/* 캐러셀 CSS */
.carousel
{
	padding: 10px;
	width: 49%;
	text-align: center;
	display: inline-block;
}

.carousel-caption {

    padding-bottom: 30px !important;
    width: 100%;
    right: 0 !important;
    left: 0 !important;
}

.carousel-caption p
{
	color: #ff8000;
	font-weight: bold;
	font-family: 라인seed;
	font-size: 13pt;
}
.carousel-caption h3
{
	color: #ff8000 !important;
	background-color: transparent;
	font-weight: bold;
	font-family: 라인seed;
	border: none;
}

/* 최신글 CSS */
.list-group-flush
{
	width: 49%;
	display: inline-block;
	text-align: center;
	margin: 4px;
}

.list
{
    position: relative;
    display: block;
    margin-bottom: 0px !important;
    background-color: #fff;
}

.list-group-flush>.list-group-item:last-child 
{
    border-bottom-width: 1px;
}

.notices
{
 	text-align: left;
}

.more
{
	color: black;
	text-decoration: none;
	text-align: right;		
}


/* 캘린더 CSS */
#groupMyProfile th, td
{
	padding: 10px;
	background-color: white;
}

table
{
	width: 100%;
}

</style>

</head>

</head>
<body>

	<c:import url="MemberHeader.jsp"></c:import>
	<div class="main">
		<!-- 사이즈 커질 때 양쪽 공백 -->
		<div class="col-md-1"></div>
		<c:import url="GroupSideBar.jsp"></c:import>
		<!-- 왼쪽 구성 -->
	<%-- 	<div class="left col-xs-12 col-sm-4 col-md-2">
		<!-- 그룹 프로필 + 그룹원 목록 -->
	
		<ul class="nav nav-tabs">
			<li class="nav-item active">
				<a href="#groupProfile" data-toggle="tab">그룹 프로필</a>
			</li>
			<li class="nav-item">
				<a href="#groupMyProfile" data-toggle="tab">마이 프로필</a>
			</li>
		</ul>	

		 <div class="tab-content"> 
		 <div class="tab-pane fade in active" id="groupProfile">
		 	<sapn>[ 고양이가 세상을 구한다 ]</sapn> <br>
		 	<div class="profileimg">
		 		<img alt="깜찍한 고양이 사진" src="img/cat3.jpg">
		 	</div>
		 	<div class="profile1" style="height: 110px; float:right; text-align: left; width: 50%; display: inline-block;">
		 		그룹장 : 나비<br>
		 		부그룹장: 으나 <br>
		 		2019.01.01 개설 <br>
		 		멤버 : 150명 <br>
		 	</div>
		 		<hr>
		 	<div class="profile2" style="display: inline;">
		 		고세구 사유: 귀여우니까<br>
		 		포인트 : 2024pt <br>
		 		<button class="button">정기 모임 발의</button>
		 		<br>  
		 		<hr>
		 	</div>
		 </div>      
 		<div class="tab-pane fade" id="groupMyProfile">
 		<div class="profileimg">
			<img alt="깜찍한 고양이 사진" src="img/cat2.jpg"><br> 
 		</div>
			<div class="profile1">
		 		<span>밍</span> 그룹원 <br>
		 		2019.01.01 가입 <br>
		 		안녕 반가워용>.< <br>
		 	</div>
		 	<div class="profile2">
				<button type="button" class="button">번개 모임 발의</button>
				<button class="button" onclick="location.href='GroupMyPage.jsp'">마이페이지</button>
				<hr>
		 	</div>
		</div>
		<c:import url="Calender.jsp"></c:import>
		<hr>
		<div class="menulist"> 
			<p><a><i class="bi bi-file-text"></i>전체글 보기</a></p>
			<p><a><i class="bi bi-calendar-event"></i>모임</a></p>
			<p><a><i class="bi bi-file-text"></i>후기</a></p>
			<p><a><i class="bi bi-file-text"></i>자유게시판</a></p>
			<hr>
			<p><a><i class="bi bi-currency-dollar"></i>회비</a></p>
			<p><a><i class="bi bi-people-fill"></i>그룹원</a></p>
			<hr>
			[ 평균을 이겨라 ] <br>
			추후 업데이트 예정
			<br><br>
			<hr>
			<p><a>그룹 탈퇴</a></p>
			<hr>
		</div>
	
			
		</div> <!-- end left --> --%>
		</div>
		<!-- 중간 영역 -->		
		<div class="center col-xs-12 col-sm-8 col-md-8">
		
		<!-- 캐러셀 (슬라이드 구성)  -->
		<div id="slideWrap" class="carousel slide" data-ride="carousel">			
				<div class="carousel-inner">
				<h3>정기 모임</h3>
				<%-- <c:forEach var="regular" items="${regularMeeting }">
					<div class="carousel-item active">
						<img src="img/gray_back2.png" alt="" width="100%" height="250">
						 <div class="carousel-caption"
						  style="text-shadow: none; bottom: 0px">
						 <br>
                		 <h3>${regular.mt_title } </h3>
           				 <p>모임 날짜 : ${regular.mt_meet }</p>
           				 <p>모임 지역 : ${regular.ct_name }</p>
           				 <p>참석 여부 확인기간 :${regular.ad_date }</p>
           				 <button class="button">참석 여부 선택하러 가기</button>
             		    </div>
					</div>
				</c:forEach> --%>
					<div class="carousel-item active">
						<img src="img/gray_back2.png" alt="" width="100%" height="250">
						 <div class="carousel-caption"
						  style="text-shadow: none; bottom: 0px">
						 <br>
                		 <h3>맛집 투어 어때용>.O </h3>
           				 <p>모임 날짜 : 2024. 02. 14</p>
           				 <p>모임 지역 : 경기도 하남시</p>
           				 <p>참석 여부 확인기간 :2024.01.20 ~ 2024.02.02</p>
           				 <button class="button">참석 여부 선택하러 가기</button>
             		    </div>
					</div>
					<div class="carousel-item">
						<img src="img/gray_back2.png" alt="" width="100%" height="250">
						 <div class="carousel-caption"
						  style="text-shadow: none; bottom: 0px">
						 <br>
                		 <h3>좀 돼라 </h3>
           				 <p>모임 날짜 : 2024. 02. 14</p>
           				 <p>모임 지역 : 경기도 하남시</p>
           				 <p>참석 여부 확인기간 :2024.01.20 ~ 2024.02.02</p>
           				 <button class="button">참석 여부 선택하러 가기</button>
             		    </div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#slideWrap" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a> 
				<a class="carousel-control-next" href="#slideWrap" data-slide="next">
				 <span class="carousel-control-next-icon"></span>
				</a>
			</div> <!-- end carousel slide -->
		<div id="slideWrap2" class="carousel slide" data-ride="carousel">			
				<div class="carousel-inner">
				<h3>번개 모임</h3>
	<%-- 			<c:forEach var="impromptu" items="${impromptuMeeting }">
					<div class="carousel-item active">
						<img src="img/gray_back2.png" alt="" width="100%" height="250">
						 <div class="carousel-caption"  style="text-shadow: none; bottom: 0px">
						 <br>
                		 <h3>${impromptu.mt_title }</h3>
           				 <p>모임 날짜 : ${impromptu.mt_meet }</p>
           				 <p>모임 지역 : ${impromptu.ct_name}</p>
           				 <p>참석 여부 확인기간 :${impromptu.ao_date }</p>
           				 <button class="button">참석 여부 선택하러 가기</button>
             		   </div>
					</div> 
				</c:forEach> --%>
				<div class="carousel-item active">
						<img src="img/gray_back2.png" alt="" width="100%" height="250">
						 <div class="carousel-caption"  style="text-shadow: none; bottom: 0px">
						 <br>
                		 <h3>오랜만에 등산</h3>
           				 <p>모임 날짜 : 2024. 02. 07</p>
           				 <p>모임 지역 : 서울시 중랑구</p>
           				 <p>참석 여부 확인기간 :2024.01.20 ~ 2024.02.02</p>
           				 <button class="button">참석 여부 선택하러 가기</button>
             		   </div>
					</div> 
				<div class="carousel-item">
						<img src="img/gray_back2.png" alt="" width="100%" height="250">
						 <div class="carousel-caption"  style="text-shadow: none; bottom: 0px">
						 <br>
                		 <h3>저도 그게 궁금해요</h3>
           				 <p>모임 날짜 : 2024. 02. 07</p>
           				 <p>모임 지역 : 서울시 중랑구</p>
           				 <p>참석 여부 확인기간 :2024.01.20 ~ 2024.02.02</p>
           				 <button class="button">참석 여부 선택하러 가기</button>
             		   </div>
					</div> 
				</div>
				<a class="carousel-control-prev" href="#slideWrap2" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a> 
				<a class="carousel-control-next" href="#slideWrap2" data-slide="next">
				 <span class="carousel-control-next-icon"></span>
				</a>
			</div> <!-- end carousel slide -->
			
			<hr>
			
			<div id="newBoard" >
	         	<ul class="list-group list-group-flush">
				<h3>왁자지껄 최신글</h3>
				<c:forEach var="newborad" items="${newBorad }">
					<c:if test="${newborad.brdr_code == null}">
						<li class="list-group-item list">${newborad.brd_subject }</li>
					</c:if>
				</c:forEach>
	  			<!-- 	<li class="list-group-item list">일단 최대한 레이아웃</li>
	  				<li class="list-group-item list">위주로 정리 했습니다.</li>
	 				<li class="list-group-item list">예쁘게는 여러분이...</li>
	  				<li class="list-group-item list">잘 해주실거라고 생각해요</li>
	  				<li class="list-group-item list">중요할 때 빠져서 죄송합니다.</li>
	  				<li class="list-group-item list">다들 아자아자 화이팅!</li> -->
				</ul>	
	  	
	         	<ul class="list-group list-group-flush">
	  			<h3>히스토리 최신글</h3>
	  				<c:forEach var="newHistory" items="${newHistory }">
	  				<%-- 	<c:if test="${newHistory.his_title==null }"> --%>
	  						<li class="list-group-item list">${newHistory.his_title }</li>
	  				<%-- 	</c:if> --%>
	  				</c:forEach>
	  				<!-- <li class="list-group-item list">목요일 회식 후기</li>
	  				<li class="list-group-item list">못가게 됐다..ㅠㅠ</li>
	 				<li class="list-group-item list">다들 재밌게 잘 놀고와...</li>
	  				<li class="list-group-item list">너무 재밌게는 놀지말고</li>
	  				<li class="list-group-item list">담에 나 있을때 또해!!</li>
	  				<li class="list-group-item list">안하면 나 운다ㅠ</li> -->
				</ul>
			<!-- 최신글 끝 -->
       	 	</div>
       	 	
	         	<div id = "notices">
				<h3 class="notices">공지사항</h3>
				<ol class="list-group list-group-numbered notices">
				<a class="more" href="noticeslist.woori">더보기 > </a>
				<c:forEach var="notices" items="${noticesList }">
			  		<li class="list-group-item notices">${notices.nf_title }</li>
			  	</c:forEach>
			  	<!-- <li class="list-group-item notices">개인정보 관련 정책</li>
			  	<li class="list-group-item notices">플랫폼 규칙</li>
			  	<li class="list-group-item notices">그 외 공지 등등</li> -->
				</ol>
				</div>
		</div> <!-- end right -->
		
		<!-- 사이즈 커질 때 양쪽 공백 -->
		<div class="col-md-1"></div>
		
		</div> <!-- end main -->

	<div class="footer col-xs-12 col-sm-12 col-md-12">
		<footer>
			<br> <a>이용약관</a> <a>개인정보처리방침</a> <a>약속해조 정책</a> <a>고객센터</a> <a>ⓒ
				약속해조</a>
		</footer>
	</div>

</body>
</html>
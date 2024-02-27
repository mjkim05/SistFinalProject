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
<title>GroupSideBar.jsp</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style type="text/css">
 

 *
 {
 	/* text-align: center; */
 }

.left
{
	padding-right: 0px !important;
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

#groupProfile ,#groupMyProfile	
{
	font-size:12pt;
	font-family: 라인Seed;
	padding: 5px;
}

.sidetab
{
	text-align: center;
}

.sidetab hr 
{
    margin-top: 5px;
    margin-bottom: 5px;
    border: 0;
    border-top: 2px solid gray;
}

.sidetab img
{
	width: 70%;
	margin: 5px;
	border: 0;
  	border-radius: 50%;
}

.profile1
{
  width: 50%; 
  height:110px; 
  float: right; 
  text-align: left;
  padding: 5px;
  display: inline-block;
}

.profile2
{
	display: inline;
}

.profileimg
{
  width: 50%; 
  height:110px; 
  float: left; 
  display: inline-block;
 
}

.mtab
{
	color: #ddd;
}

.nav-tabs
{
	margin: 0;
}

.nav_tabs > li > a
{
	border: 1px solid #ddd !important;
}

	
#groupProfile span
{
	margin: 10px; 	
}

.menulist
{
	width: 100%;
	line-height: 20px;
}

.menulist a
{
	color: black;
}

.menulist i
{
	float: left;
	color: black;
	font-size: 15px;
	
}

.nav-tabs > li.active > a , .nav-tabs > li.active > a:hover, a:focus
{
    color: #ff8000 !important;
}

.mtab > a
{
    color: dimgray;
}


</style>
</head>
<body>
	<div class="left col-xs-12 col-sm-4 col-md-2">
		<!-- 그룹 프로필 + 그룹원 목록 -->
		 <ul class="nav nav-tabs">
			<li class="nav-item mtab active" >
				<a href="#groupProfile" data-toggle="tab">그룹 프로필</a>
			</li>
			<li class="nav-item mtab">
				<a href="#groupMyProfile" data-toggle="tab">마이 프로필</a>
			</li>
		 </ul>	
		 <div class="tab-content sidetab"> 
		 <div class="tab-pane fade in active" id="groupProfile">
		 	<sapn>${groupProfile.cg_name }</sapn> <br>
		 	<div class="profileimg">
		 		<img alt="깜찍한 고양이 사진" src="img/cat3.jpg">
		 	</div>
		 	<div class="profile1">
		 	<c:forEach var="position" items="${groupPosition }">
		 		${position.pos_name } : ${position.gm_nickname } <br>
		 	</c:forEach>
		 		${groupProfile.cg_date} 개설 <br>
		 		멤버 : ${groupCount }명 <br>
		 		<hr>
		 	</div>
		 	<div class="profile2">
		 		${groupProfile.cg_intro }<br>
		 		포인트 : ${groupPoint }pt<br>	
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
		 		<!-- <span>밍</span> 그룹원 <br>
		 		2019.01.01 가입 <br>
		 		 안녕 반가워용>.< <br> -->
		 		<span>${myGroupProfile.gm_nickname } </span>${myGroupProfile.pos_name } <br>
		 		${myGroupProfile.gm_regdate } 가입 <br>
		 		${myGroupProfile.gm_intro } <br>
		 		 
		 	</div>
		 	<div class="profile2">
				<button type="button" class="button">번개 모임 발의</button>
				<button class="button" onclick="location.href='groupmypage.action'">마이페이지</button>
				<hr>
		 	</div>
		</div>
		<c:import url="SideCalender.jsp"></c:import>
		<hr>
		<div id="menulist" class="menulist"> 
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
	
			
		</div> <!-- end left -->
	</div>
</body>
</html>
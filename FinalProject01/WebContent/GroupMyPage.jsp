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
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<style type="text/css">

	*
	{
		font-family: 라인Seed;
		font-size: 13pt;
	}
	
	.myPage
	{
		width: 1270px;
		height: 720px;
		margin-left:480px;
		margin-top: 50px;
		border: 1px solid #ddd;
		box-shadow: 3px 3px 3px #ddd;
	}
	
	.myPage h3
	{

		margin-top:20px;
		margin-left: 35px;
		display: inline-block;
	}
	
	.sideBar
	{
		margin-left: 180px;
	}
	
	/* .myPage_side */
		.myPage_side
	{
		border-right: 1px solid #ddd;
		width: 270px;
		height: 720px;
		float: left;
		font-size: 15px;
	}

	.myPage_side li
	{
		list-style: none;
		margin-top: 20px;
	}
		
	.myPage_side p 
	{
    	padding: 5px;
    	text-align: center;
	}	

	.myPage_side img
	{
		width: 100px;
		margin-top: 20px;
		border: 0;
		border-radius: 50px;
		margin-left: auto;
		margin-right: auto;
	}
	
	.myPage_side span
	{
		display: inline-block;
		text-align: center;
		margin-top: 150px;
	}
	
	.myPage_side span>a
	{
		margin-left: 10px;
		color: #363636;
	}
	

	/* myPage_MyInfo , myPage_AccountInfo */
	.myPage_MyInfo, .myPage_AccountInfo
	{
		border: 1px soild #ddd;
		border-radius: 15px;
		background-color: white;
		padding: 10px;
		box-shadow: 3px 3px 3px #ddd;
		margin-left: 30px;
		margin-right: 30px;
	}
	
	.myPage_MyInfo div, .myPage_AccountInfo div
	{
		padding-top: 5px;
	}
	
	.myPage_MyInfo img
	{
		border: 0;
   		border-radius: 50px;
   		width: 50px;
	}
	
	.myPage_MyInfo .header
	{
		margin-left: 20px;
		display: inline-block;
		width: 200px;
	}
	
	.myPage_AccountInfo .header
	{
		margin-left: 20px;
		display: inline-block;
		width: 200px;
	}
	
	.myPage_main
	{
		width: 1000px;
		float: right;
	}
	
	/* 버튼  */
	.mybtn 
	{
		float: right;
		font-size: 12pt;
		margin-right: 20px;
		border: none;
		background-color: transparent;
		color: #ff8000;
		
	}
	
	.button
	{
		font-size: 12pt;
		margin-right: 7px;
		border: 0;
	}
	
	.pwdbtn
	{
		float: none;
		margin-left: -5px;
	}
	
	
	/* 탭 */
	.nav 
	{
	   	margin-left: 0px !important; 
	}
	
	.nav-pills .nav-link.active, .nav-pills .show>.nav-link 
	{
    	color: #ff8000;
      	text-decoration-line: underline;
    	text-underline-offset: 10px;
    	background: transparent;
	}
	
	.nav-link:hover
	{
    	color: #363636;
	}
	
	.nav-link
	{
		color: dimgray; 
		font-size: 21px;
    	padding: 10px;
	}
	
	.mytab
	{
		color: #363636;
		width: 1000px;
		height: 720px;
		background-color: #dddddd1f;
	}
	
	/* 페이징 */
	
	div.paging
	{ margin-top: 50px;}
	
	nav.page-nav
	{
	    display: flex;
	    justify-content: space-around;
	    align-items: baseline;
	}
	
	ul.page-list
	{
	   display: flex;
	    justify-content: space-between;
	    list-style: none;
	}
	
	a.page-control
	{
	   padding: 3.5px 6px;
	   border: 1px solid #b5b5b5;
	   margin: 4px;
	   background-color: white
	   text-decoration: none;
	   color: #363636;
	   font-size: 10pt;
	   border-radius: 4px;
	   display: inline-flex;
	}
	
	a.page-control:hover
	{
	   background-color: #ff8a3d;
	   border: 1px solid #ff8a3d;
	   color: white;
	}
	
	a.page-control.now-page
	{
	   background-color: #ff8000;
	   border: 1px solid #ff8000;
	   color: white;
	   font-weight: bold;
	}
	
	.Mycontent
	{
		padding: 35px;
		padding-top: 70px;
	}
	
	.Mycontent select
	{
		padding: 5px;
		margin-bottom: 10px;
	}
	.table
	{
		box-shadow: 3px 3px 3px #ddd;
	}
	.table th
	{
		color: #ff8000;
	}

	/* 모임 일정 */
	.MeetingCalender
	{
		padding:20px;
		padding-top: 30px;
		
	}

</style>
</head>
<body>
<c:import url="MemberHeader.jsp"></c:import>
<div>

<div class="sideBar">
	<c:import url="GroupSideBar.jsp" ></c:import>
</div>
<div class="myPage">
<div class="d-flex align-items-start">
		<div class="myPage_side">
			<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				<p><img src="img/cat3.jpg" alt="프로필 사진" /></p>
				<p>맛밤꿀맛</p>
				    <button class="nav-link active" id="myPageMain-tab" data-bs-toggle="tab" data-bs-target="#myPageMain" 
				    type="button" role="tab" aria-controls="myPageMain" aria-selected="true" tabindex="-1">내 정보</button>
				    <button class="nav-link" id="myPageContent-tab" data-bs-toggle="tab" data-bs-target="#myContent" 
				    type="button" role="tab" aria-controls="myContent" aria-selected="false" tabindex="-1">내가 쓴 글</button>
				  
				    <button class="nav-link" id="myMetting-tab" data-bs-toggle="tab" data-bs-target="#myMetting" 
				    type="button" role="tab" aria-controls="myMetting" aria-selected="false" tabindex="-1">모임 일정</button>
				  <span><a href="">로그아웃</a><a href="cs.action">고객센터</a></span>
			</div>
		</div>
		<div class="tab-content">
		<div class="tab-pane fade in active show mytab" id="myPageMain" role="tabpanel" aria-labelledby="myPageMain-tab" tabindex="0">
			<h3>내 정보</h3>
			<div class="myPage_MyInfo">
				<div>
					<p> <span class="header">프로필 사진 </span>
						<img alt="프로필 사진" src="img/cat3.jpg">
					</p>
				</div>
				<div>
					<p><span class="header">닉네임</span> <span class="body">${myProfile.gm_nickname }</span></p>
				</div>
				<div>
					<p><span class="header">상태메세지</span> <span class="body">${myProfile.gm_intro } </span></p>
				</div>
				<div>
					<p>
						<span class="header">그룹가입일</span> <span class="body">${myProfile.gm_regdate }</span>
						<button class="mybtn">정보 변경</button>				
					</p>
				</div>
			</div>
			<hr />						
				<h3>계정 정보</h3>
				<div class="myPage_AccountInfo">
				<div>
					<p><span class="header">아이디</span><span class="body">ming0528</span></p>
				</div>
				<div>
					<p><span class="header">이름</span><span class="body">김민지</span></p>
				</div>
				<div>
					 <p><span class="header">전화번호</span><span class="body">010-7159-4231</span></p>
				</div>
				<div>
				<p>
					<span class="header">비밀번호</span>	
					<button class="mybtn pwdbtn">변경</button>
					<button class="mybtn">정보 변경</button>			
				</p>
				</div>
			</div>
		</div>
	    <div class="tab-pane fade in mytab" id="myContent" role="tabpanel" aria-labelledby="myPageContent-tab"" tabindex="0">
	    <div class="Mycontent">	
	    	<div>
	    		<select name="" id="">
	    			<option value="">전체글 보기</option>
	    			<option value="">정기 모임 글 보기</option>
	    			<option value="">번개 모임 글 보기</option>
	    			<option value="">히스토리 보기</option>
	    			<option value="">자유게시판 글 보기</option>
	    		</select>
	    	</div>
			<div>
	  			<div class="allContent">
	  				<table class="table table-hover">
	  					<tr>
	  						<th>글번호</th>
	  						<th>제목</th>
	  						<th>조회수</th>
	  						<th>작성일</th>
	  					</tr>
	  					<tr>
	  						<td>1</td>
	  						<td>오늘 다같이 파묘 보러 갑니다!!</td>
	  						<td>431</td>
	  						<td>2024-02-23</td>
	  					</tr>
	  					<tr>
	  						<td>2</td>
	  						<td>같이 파묘 보러 가실분</td>
	  						<td>1,053</td>
	  						<td>2024-02-15</td>
	  					</tr>
	  					<tr>
	  						<td>3</td>
	  						<td>솔직히, 말할게 많이 기다려 왔어</td>
	  						<td>506</td>
	  						<td>2024-01-13</td>
	  					</tr>
	  					<tr>
	  						<td>4</td>
	  						<td>너도 그랬을 거라 믿어</td>
	  						<td>751</td>
	  						<td>2024-01-13</td>
	  					</tr>
	  					<tr>
	  						<td>5</td>
	  						<td>오늘이 오길 매일같이 달력을 보면서</td>
	  						<td>851</td>
	  						<td>2024-01-13</td>
	  					</tr>
	  					<tr>
	  						<td>6</td>
	  						<td>Amnesia, 멀어져 가</td>
	  						<td>1,021</td>
	  						<td>2024-01-11</td>
	  					</tr>
	  					<tr>
	  						<td>7</td>
	  						<td>이건 뭔가 잘못 됐어, 사실 도망가는 것</td>
	  						<td>751</td>
	  						<td>2024-01-10</td>
	  					</tr>
	  					<tr>
	  						<td>8</td>
	  						<td>너무 깊었던 실망감</td>
	  						<td>951</td>
	  						<td>2024-01-05</td>
	  					</tr>
	  					<tr>
	  						<td>9</td>
	  						<td>하물며 아물지 않은 기억</td>
	  						<td>4,156</td>
	  						<td>2024-01-03</td>
	  					</tr>
	  					<tr>
	  						<td>10</td>
	  						<td>고개를 돌리며 또 모른 척</td>
	  						<td>8,051</td>
	  						<td>2024-01-01</td>
	  					</tr>
	  				</table>
	  				<!-- 페이징 처리 영억 -->
				      <div class="paging" align="center">
				         <nav class="page-nav">
				            <a href="" class="page-control pre-page">이전 페이지</a>
				            <ul class="page-list">
				               <li>
				                  <a href="" class="page-control first-page-control">1</a>
				               </li>
				               <li><a href="" class="page-control pre-page">...</a></li>
				               <li><a href="" class="page-control">11</a></li>
				               <li><a href="" class="page-control">12</a></li>
				               <li><a href="" class="page-control">13</a></li>
				               <li><a href="" class="page-control">14</a></li>
				               <li><a href="" class="page-control now-page">15</a></li>
				               <li><a href="" class="page-control">16</a></li>
				               <li><a href="" class="page-control">17</a></li>
				               <li><a href="" class="page-control">18</a></li>
				               <li><a href="" class="page-control">19</a></li>
				               <li><a href="" class="page-control">20</a></li>
				               <li><a href="" class="page-control next-page">...</a></li>
				               <li>
				                  <a href="" class="page-control last-page-control">68</a>
				               </li>
				            </ul>
				            <a href="" class="page-control next-page">다음 페이지</a>
				         </nav>
				      </div>
	  			</div>
			</div>	  			
		</div>
		</div>
	    <div class="tab-pane fade in mytab" id="myMetting" role="tabpanel" aria-labelledby="myMetting-tab" tabindex="0">
	    	<div class="MeetingCalender">
	    		<c:import url="MyCalender.jsp"></c:import>   	
	    	</div>
		</div>
	</div>
</div>

</div>

</body>
</html>
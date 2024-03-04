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

<!-- 다음 주소 js -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
		height: 830px;
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
		height: 830px;
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
	.myPage_MyInfo.active, .myPage_AccountInfo.active
	{
		border: 1px soild #ddd;
		border-radius: 15px;
		background-color: white;
		padding: 10px;
		box-shadow: 3px 3px 3px #ddd;
		margin-left: 30px;
		margin-right: 30px;
		display: block;
	}
	
	.myPage_MyInfo, .myPage_AccountInfo
	{
		display: none;
	}
	
	.myPage_MyInfo.active div, .myPage_AccountInfo.active div
	{
		padding-top: 5px;
	}
	
	.myPage_MyInfo.active img, .myPage_AccountInfo.active img
	{
		border: 0;
   		border-radius: 50px;
   		width: 50px;
	}
	
	.myPage_MyInfo.active .header
	{
		margin-left: 20px;
		display: inline-block;
		width: 200px;
	}
	
	.myPage_AccountInfo.active .header
	{
		margin-left: 20px;
		display: inline-block;
		width: 200px;
	}
	
	.myPage_MyInfo.active input, .myPage_AccountInfo.active input
	{
		padding: 3px;
		margin: 0px;
	}
	
	.myPage_main
	{
		width: 1000px;
		float: right;
	}
	.myPage_main_update
	{
		width: 1000px;
		float: right;
		height: 
	}
	
	#addr
	{
		margin-left: 24%
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
	
	.tab-pane
	{
		text-align: left;
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
	
	#addr input
	{
		width: 500px;
	}
	
	
	
</style>
<script type="text/javascript">
	
	// 내 정보 변경을 눌렀을 때 호출되는 함수 (display 변경)
	function updateMyInfo()
	{
	 	var myInfo =  document.getElementById("myInfo");
	 	var updateInfo = document.getElementById("updateMyInfo");
	 	
	 	myInfo.className = "myPage_MyInfo";
	 	updateInfo.className = "myPage_MyInfo active";
	}
	
	// 계정 정보 변경을 눌렀을 때 호출되는 함수 (display 변경)
	function updateAccoountInfo()
	{
	 	var myAccoountInfo =  document.getElementById("myAccoountInfo");
	 	var updateAccoountInfo = document.getElementById("updateMyAccoountInfo");
	 	
	 	myAccoountInfo.className = "myPage_AccountInfo";
	 	updateAccoountInfo.className = "myPage_AccountInfo active";
	}
	
	// 우편번호 및 주소를 입력해주는 함수
	function execDaumPostcode()
	{
		new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R')
                {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== '')
                    {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                } 
                else 
                {
                	extraAddr = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("postcode").value = data.zonecode;
                document.getElementById("address").value = addr + extraAddr;
                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
	}
	
	
</script>
</head>
<body>
<c:import url="MemberHeader.jsp"></c:import>
<div>

<div class="sideBar">
	 <c:import url="GroupSideBar.jsp" ></c:import>
	<%-- <jsp:include page="GroupSideBar.jsp" /> --%>
<%-- 	﻿<%@ include file="GroupSideBar.jsp" %> --%>
</div>
<div class="myPage">
<div class="d-flex align-items-start">
		<div class="myPage_side">
			<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				<p><img src="img/cat3.jpg" alt="프로필 사진" /></p>
				<p>${myGroupProfile.gm_nickname }</p>
				    <button class="nav-link active" id="myPageMain-tab" data-bs-toggle="tab" data-bs-target="#myPageMain" 
				    type="button" role="tab" aria-controls="myPageMain" aria-selected="true" tabindex="-1">내 정보</button>
				    <button class="nav-link" id="myPageContent-tab" data-bs-toggle="tab" data-bs-target="#myContent" 
				    type="button" role="tab" aria-controls="myContent" aria-selected="false" tabindex="-1">내가 쓴 글</button>
				  
				    <button class="nav-link" id="myMetting-tab" data-bs-toggle="tab" data-bs-target="#myMetting" 
				    type="button" role="tab" aria-controls="myMetting" aria-selected="false" tabindex="-1">모임 일정</button>
				  <span><a href="">로그아웃</a><a href="cs.woori">고객센터</a></span>
			</div>
		</div>
		<div class="tab-content">
		<div class="tab-pane fade in active show mytab" id="myPageMain" role="tabpanel" aria-labelledby="myPageMain-tab" tabindex="0">
			<h3>내 정보</h3>
			<div class="myPage_MyInfo active" id="myInfo">
				<div>
					<p> <span class="header">프로필 사진 </span>
						<img alt="프로필 사진" src="img/cat3.jpg">
					</p>
				</div>
				<div>
					<p><span class="header">닉네임</span> <span class="body">${myGroupProfile.gm_nickname }</span></p>
				</div>
				<div>
					<p><span class="header">상태메세지</span> <span class="body">${myGroupProfile.gm_intro } </span></p>
				</div>
				<div>
					<p>
						<span class="header">그룹가입일</span> <span class="body">${myGroupProfile.gm_regdate }</span>
						<button type="button" class="mybtn" onclick="updateMyInfo()">정보 변경</button>				
					</p>
				</div>
			</div>
			<div class="myPage_MyInfo" id="updateMyInfo">
			<form action="mypageupdate.woori" method="post">
				<div>
					<p> <span class="header">프로필 사진 </span>
						<img alt="프로필 사진" src="img/cat3.jpg">
					</p>
				</div>
				<div>
					<p><span class="header">닉네임</span><span class="body"><input type="text" name="gm_nickname" value="${myGroupProfile.gm_nickname }" placeholder="닉네임을 변경하세요!"/></span></p>
				</div>
				<div>
					<p><span class="header">상태메세지</span> <span class="body"><input type="text" name="gm_intro" value="${myGroupProfile.gm_intro }" placeholder="상태메세지를 변경하세요" /> </span></p>
				</div>
				<div>
					<p>
						<span class="header">그룹가입일</span> <span class="body">${myGroupProfile.gm_regdate }</span>
						<button type="submit" class="mybtn">정보 변경</button>				
						<button type="button" class="mybtn" onclick="location.href='groupmypage.woori'">취소</button>				
					</p>
				</div>
			</form>
			</div>
			<hr />						
				<h3>계정 정보</h3>
				<div class="myPage_AccountInfo active" id="myAccoountInfo">
				<div>
					<p> <span class="header">프로필 사진 </span>
						<img alt="프로필 사진" src="img/${myProfile.us_profile }">
					</p>
				</div>
				<div>
					<p><span class="header">아이디</span><span class="body">${myProfile.us_id }</span></p>
				</div>
				<div>
					<p><span class="header">이름</span><span class="body">${myProfile.us_name }</span></p>
				</div>
				<div>
					<p><span class="header">이메일</span><span class="body">${myProfile.us_email }</span></p>
				</div>
				<div>
					 <p><span class="header">전화번호</span><span class="body">${myProfile.us_tel }</span></p>
				</div>
				<div>
					 <p><span class="header">주소</span><span class="body">[${myProfile.us_zipcode}] ${myProfile.us_addr} ${myProfile.us_addr2}</span></p>
				</div>
				<div>
				<p>
					<span class="header">비밀번호</span>	
					<button class="mybtn pwdbtn">변경</button>
					<button class="mybtn" onclick="updateAccoountInfo()">정보 변경</button>			
				</p>
				</div>
				</div>
				<div class="myPage_AccountInfo" id="updateMyAccoountInfo">
				<form action="userprofileupdate.woori">
				<div>
					<p> <span class="header">프로필 사진 </span>
						<img alt="프로필 사진" src="img/${myProfile.us_profile }">
						<input type="file" name="us_profile"/>
					</p>
				</div>
				<div>
					<p><span class="header">아이디</span><span class="body">${myProfile.us_id }</span></p>
				</div>
				<div>
					<p><span class="header">이름</span><span class="body">${myProfile.us_name }</span></p>
				</div>
				<div>
					<p><span class="header">이메일</span><span class="body"><input type="text" name="us_email" value="${myProfile.us_email }" 
					    placeholder="이메일을 입력해주세요"/></span></p>
				</div>
				<div>
					 <p><span class="header">전화번호</span><span class="body"><input type="text" name="us_tel" value="${myProfile.us_tel }"
					 placeholder="전화번호를 입력해주세요(- 제외)"/></span></p>
				</div>
				<div>
					 <p><span class="header">주소</span><span class="body">
						 <input type="text" id="postcode" name="us_zipcode" placeholder="우편번호" value="${myProfile.us_zipcode}">
						 <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
					 <div id="addr">
						 <input type="text" id="address" name="us_addr" placeholder="주소" value="${myProfile.us_addr}"><br>
						 <input type="text" id="detailAddress" name="us_addr2" placeholder="상세주소" value="${myProfile.us_addr2 }">
					 </div>
					 </span>
					 </p>
				</div>
				<div>
				<p>
					<span class="header">비밀번호</span>	
					<button class="mybtn pwdbtn">변경</button>
					<button type="submit" class="mybtn" onclick="()">정보 변경</button>		
					<button type="button" class="mybtn" onclick="location.href='groupmypage.woori'">취소</button>	
				</p>
				</div>
				</form>
				</div>
			</div>
	    <div class="tab-pane fade in mytab" id="myContent" role="tabpanel" aria-labelledby="myPageContent-tab"" tabindex="0">
	    <div class="Mycontent">	
			<div>
	    		<ul class="nav nav-tabs">
					<li class="nav-item mtab active" >
						<a href="#allBoard" data-toggle="tab">전체</a>
					</li>
					<li class="nav-item mtab">
						<a href="#regularBoard" data-toggle="tab">정기모임</a>
					</li>
					<li class="nav-item mtab">
						<a href="#impromptuBoard" data-toggle="tab">번개모임</a>
					</li>
					<li class="nav-item mtab">
						<a href="#historyBorad" data-toggle="tab">히스토리</a>
					</li>
					<li class="nav-item mtab">
						<a href="#board" data-toggle="tab">자유게시판</a>
					</li>
				</ul>	
	    	</div>
	    	
			<div>
	  		<div class="allContent">
	  			<div class="tab-content sidetab"> 
	  			<!-- 정기모임 -->
					<div class="tab-pane fade in active" id="regularBoard">
		  				<table class="table table-hover">
		  					<tr>
		  						<th>글번호</th>
		  						<th>제목</th>
		  						<th>조회수</th>
		  						<th>작성일</th>
		  					</tr>
		  					<c:forEach var="regularBoard" items="${regularBoard }">
		  					<tr>
		  						<td>${regularBoard.mt_code }</td>
		  						<td>${regularBoard.mt_title }</td>
		  						<td> - </td>
		  						<td>${regularBoard.mt_date }</td>
		  					</tr>
		  					</c:forEach>
		  				</table>
					 </div>  
	  			<!-- 번개모임 -->
					<div class="tab-pane fade" id="impromptuBoard">
		  				<table class="table table-hover">
		  					<tr>
		  						<th>글번호</th>
		  						<th>제목</th>
		  						<th>조회수</th>
		  						<th>작성일</th>
		  					</tr>
		  					<c:forEach var="impromptuBoard" items="${impromptuBoard }">
		  					<tr>
		  						<td>${impromptuBoard.mt_code }</td>
		  						<td>${impromptuBoard.mt_title }</td>
		  						<td> - </td>
		  						<td>${impromptuBoard.mt_date }</td>
		  					</tr>
		  					</c:forEach>
		  				</table>
					 </div>  
	  			<!-- 히스토리 -->
					<div class="tab-pane fade" id="historyBorad">
		  				<table class="table table-hover">
		  					<tr>
		  						<th>글번호</th>
		  						<th>제목</th>
		  						<th>조회수</th>
		  						<th>작성일</th>
		  					</tr>
		  					<c:forEach var="historyBorad" items="${historyBorad }">
		  					<tr>
		  						<td>${historyBorad.his_code }</td>
		  						<td>[ ${historyBorad.mt_title } ] 모임의 ${historyBorad.gm_nickname }님이 작성한 히스토리입니다.</td>
		  						<td>${historyBorad.his_view } </td>
		  						<td>${historyBorad.his_date }</td>
		  					</tr>
		  					</c:forEach>
		  				</table>
					 </div>  
	  			<!-- 자유게시판 -->
					<div class="tab-pane fade" id="board">
		  				<table class="table table-hover">
		  					<tr>
		  						<th>글번호</th>
		  						<th>제목</th>
		  						<th>조회수</th>
		  						<th>작성일</th>
		  					</tr>
		  					<c:forEach var="board" items="${board }">
		  					<tr>
		  						<td>${board.brd_code } </td>
		  						<td> ${board.brd_subject }</td>
		  						<td> ${board.brd_view } </td>
		  						<td>${board.brd_date }</td>
		  					</tr>
		  					</c:forEach>
		  				</table>
					 </div> 
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
				      
	  			</div> <!-- allContent -->
			</div>	  			
			</div> <!-- Mycontent -->
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
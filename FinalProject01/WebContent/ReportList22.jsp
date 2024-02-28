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
<title>신고 내역 - 우리만</title>
<link rel="stylesheet" href="<%=cp%>/css/font.css">
<link rel="stylesheet" href="<%=cp%>/css/memberHeader.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">

	*
	{
		font-family: 라인Seed;
		font-weight: bold;
		text-align: center;
	}
	
	.aaa
	{
		margin-left: 15%;
		text-align: left;
	}
	
	hr 
	{
		margin-left: auto;
		margin-right: auto;
		width: 70%;
		height: 30%;
	}
	
	.date
	{
		margin-left: 15%;
		text-align: left;
		width: 70%;
		background-color: #f3f3f1;
		border: solid 1px #f3f3f1;
		border-radius: 10px;
		padding: 15px;
		font-size: 15pt;
	}
	
	input
	{
		padding: 6px;
		border: solid 1px;
		border-radius: 5px;
	}
	
	 select
	 {
	 	padding: 10px;
	 	border: solid 1px;
		border-radius: 5px;
	 }
	 
	
	.btn
	{
		font-size: 13pt;
		padding: 10px;
		width: 100pt;
	}

	.btnSelect
	{
		background-color:  #ff8000;
		color: white;
	}
	
	.btnSelect:hover
	{
		background-color: #e97501;
		color: white;
	}
	
	.nav-tabs
	{
		padding: 5px;
	}
	
	.table
	{
		margin-left: auto;
		margin-right: auto;
		width: 70%;
		
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
		width: 30pt;
	}
	
	
</style>

</head>
<body>

<!-- 임시 헤더 영역 -->
<div>
	<br>
	<c:import url="MemberHeader.jsp"></c:import>
	<hr />
	<br>
</div>

<div class = "report">
	<h3 class="aaa">신고 내역</h3>
	<hr />
	<div class="date">
		<select name="" id="">
			<option value="3">3개월</option>
			<option value="6">6개월</option>
			<option value="12">1년</option>
			<option value="24">2년</option>
			<option value="">직접설정</option>
		</select>
		<input type="date" /> ~ <input type="date" />
		<button class="btn btnSelect">조회</button>
	</div>
	<br>
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
<!-- footer 영역 추후 임포트 -->
<div class="footer col-xs-12 col-sm-12 col-md-12">
	<footer>
		<br> 
		<a>이용약관</a> <a>개인정보처리방침</a> <a>우리만 정책</a> <a>고객센터</a> <a> ⓒ 우리만</a>
	</footer>
</div>
<br>

</body>
</html>
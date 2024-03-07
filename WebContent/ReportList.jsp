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
	
	.nav 
	{
	   	margin-left: 0px !important; 
	}
	
	.nav-link.active, .nav-pills .show>.nav-link 
	{
    	color: #ff8000 !important;
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
	
	.Mycontent
	{
	    width: 1343px;
	    margin-left: 15%;
	}
	
	.table
	{
		box-shadow: 3px 3px 3px #ddd;
	}
	.table th
	{
		color: #ff8000;
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
    		<nav class="nav nav-tabs reporttab" role="tablist">
    			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				    <button class="nav-link active" id="nav-all-tab" data-bs-toggle="tab" data-bs-target="#allReport" 
				    type="button" role="tab" aria-controls="allReport" aria-selected="true">전체</button>
				    <button class="nav-link" id="nav-group-tab" data-bs-toggle="tab" data-bs-target="#groupReport" 
				    type="button" role="tab" aria-controls="groupReport" aria-selected="false">그룹</button>
				    <button class="nav-link" id="nav-meeting-tab" data-bs-toggle="tab" data-bs-target="#meetingReport" 
				    type="button" role="tab" aria-controls="meetingReport" aria-selected="false">모임</button>
				    <button class="nav-link" id="nav-history-tab" data-bs-toggle="tab" data-bs-target="#historyReport" 
				    type="button" role="tab" aria-controls="historyReport" aria-selected="false">히스토리</button>
				    <button class="nav-link" id="nav-board-tab" data-bs-toggle="tab" data-bs-target="#boardReport" 
				    type="button" role="tab" aria-controls="boardReport" aria-selected="false">자유게시판</button>
				</div>
			</nav>	
			  <div class="tab-content" id="nav-tabContent">
				  <div class="tab-pane fade show active" id="allReport" role="tabpanel" aria-labelledby="nav-all-tab">
					<table class="table table-hover">
	  					<tr>
	  						<th>신고번호</th>
							<th>신고유형</th>
							<th>신고대상</th>
							<th>신고날짜</th>
							<th>상태</th>
	  					</tr>
	  					<c:forEach var="allReportList" items="${allReportList }">
	  					<tr onclick="location.href='reportboard.woori?report_code=${allReportList.report_code }'">
	  						<td>${allReportList.report_code }</td>
							<td>${allReportList.report_type }</td>
							<td>${allReportList.report_content }</td>
							<td>${allReportList.report_date }</td>
							<td>${allReportList.report_status }</td>
	  					</tr>
	  					</c:forEach>
	  				</table>
				  </div>
				  <div class="tab-pane fade" id="groupReport" role="tabpanel" aria-labelledby="nav-group-tab">
					<table class="table table-hover">
	  					<tr>
	  						<th>신고번호</th>
							<th>신고유형</th>
							<th>신고대상</th>
							<th>신고날짜</th>
							<th>상태</th>
	  					</tr>
	  					<c:forEach var="groupReportList" items="${groupReportList }">
	  					<tr>
	  						<td>${groupReportList.report_code }</td>
							<td>${groupReportList.report_type }</td>
							<td>${groupReportList.report_content }</td>
							<td>${groupReportList.report_date }</td>
							<td>${groupReportList.report_status }</td>
	  					</tr>
	  					</c:forEach>
	  				</table>
				  </div>
				  <div class="tab-pane fade" id="meetingReport" role="tabpanel" aria-labelledby="nav-meeting-tab">
					<table class="table table-hover">
	  					<tr>
	  						<th>신고번호</th>
							<th>신고유형</th>
							<th>신고대상</th>
							<th>신고날짜</th>
							<th>상태</th>
	  					</tr>
	  					<c:forEach var="meetingReportList" items="${meetingReportList }">
	  					<tr>
	  						<td>${meetingReportList.report_code }</td>
							<td>${meetingReportList.report_type }</td>
							<td>${meetingReportList.report_content }</td>
							<td>${meetingReportList.report_date }</td>
							<td>${meetingReportList.report_status }</td>
	  					</tr>
	  					</c:forEach>
	  				</table>
				  </div>
				  <div class="tab-pane fade" id="historyReport" role="tabpanel" aria-labelledby="nav-history-tab">
					<table class="table table-hover">
	  					<tr>
	  						<th>신고번호</th>
							<th>신고유형</th>
							<th>신고대상</th>
							<th>신고날짜</th>
							<th>상태</th>
	  					</tr>
	  					<c:forEach var="historyReportList" items="${historyReportList }">
	  					<tr>
	  						<td>${historyReportList.report_code }</td>
							<td>${historyReportList.report_type }</td>
							<td>${historyReportList.report_content }</td>
							<td>${historyReportList.report_date }</td>
							<td>${historyReportList.report_status }</td>
	  					</tr>
	  					</c:forEach>
	  				</table>
				  </div>
				  <div class="tab-pane fade" id="boardReport" role="tabpanel" aria-labelledby="nav-board-tab">
					<table class="table table-hover">
	  					<tr>
	  						<th>신고번호</th>
							<th>신고유형</th>
							<th>신고대상</th>
							<th>신고날짜</th>
							<th>상태</th>
	  					</tr>
	  					<c:forEach var="boardportList" items="${boardportList }">
	  					<tr>
	  						<td>${boardportList.report_code }</td>
							<td>${boardportList.report_type }</td>
							<td>${boardportList.report_content }</td>
							<td>${boardportList.report_date }</td>
							<td>${boardportList.report_status }</td>
	  					</tr>
	  					</c:forEach>
	  				</table>
				  </div>
			</div>
		</div> <!-- reportContent -->
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
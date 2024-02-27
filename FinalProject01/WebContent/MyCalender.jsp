<%@page import="java.time.Year"%>
<%@page import="java.util.Calendar"%>
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
<title>캘린더</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">

@font-face {
    font-family: '라인Seed';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family:'라인Seed';
}

/*#5 */
.Mywrapper 
{
  width: 100%;
  background: #fff;
  border-radius: 10px;
  box-shadow: 3px 3px 3px #ddd;
}
 
/*#6*/
.Mywrapper .nav 
{
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 5px;
}

.nav
{
	margin-left: 15px;
}

.Mywrapper .nav button {
  font-size: 15px;
  color: #878787;
  border: none;
  background-color: transparent;
}

/*#7*/
.Mycalendar ul {
  display: flex;
  list-style: none;
  flex-wrap: wrap;
  text-align: center;
  padding-left: 0 !important;
}
.Mycalendar .weeks li {
  font-weight: 500;
}
.Mycalendar .days {
  margin-bottom: 20px;
}
.Mycalendar ul li {
  /*#8*/
  width: calc(100% / 7);
  
  /*#9*/
  position: relative;
}
.Mycalendar .days li {
  /*#10*/
  z-index: 1;
  padding-top:10px;
  padding-bottom: 80px;
  cursor: pointer;
  border: 1px solid #000000;
}
  
}
 
/*#11*/
.days li.inactive {
  color: #aaa;
}

.days li.active {
  color: #fff;
}

.point > span
{
	margin: 10px;
}

.Mycalendar .days li::before {
    position: absolute;
    content: '';
    height: 30px;
    width: 30px;
    top: 19px;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 50%;
    z-index: -1;
}

.days li.point::before {
  background: #ff8000;
}

.point
{
 	position: relative;
 
}
.mtpoint
{
    position: absolute;
    font-size: 13px;
    width: 137px;
    padding-top: 5px;
}

</style>
</head>
<body>

<div class="Mywrapper">
    <header>
        <div class="nav">
          <button class="material-icons"><</button>
          <p class="current-date">February 2024</p>
          <button class="material-icons">></button>
        </div>
      </header>
      <div class="Mycalendar">
        <ul class="weeks">
          <li>일</li>
          <li>월</li>
          <li>화</li>
          <li>수</li>
          <li>목</li>
          <li>금</li>
          <li>토</li>
        </ul>
        <ul class="days">
          <li class="inactive">27</li>
          <li class="inactive">28</li>
          <li class="inactive">29</li>
          <li class="inactive">30</li>
          <li>1</li>
          <li>2</li>
          <li>3</li>
          <li>4</li>
          <li>5</li>
          <li>6</li>
          <li>7</li>
          <li>8</li>
          <li class="point">9
          	 <div class="mtpoint">
		          코노 도토리<br>
		          서울시 연남동<br>
	          	  18:20 ~  <br>
	          </div>  
          </li>
          <li>10</li>
          <li>11</li>
          <li class="point">12  
	          <div class="mtpoint">
		          여기에 글씨를 써볼게요<br>
		          어떻게 될까요?<br>
		          여기는 시간~~<br>
	          </div>
          </li>
          <li>13</li>
          <li>14</li>
          <li>15</li>
          <li>16</li>
          <li>17</li>
          <li>18</li>
          <li>19</li>
          <li>20</li>
          <li class="point">21
          	 <div class="mtpoint">
		          모임제목은 멀로 할까용?<br>
		          모임장소도 고민이 돼요<br>
		          여기는 시간을 넣을게요!! <br>
	         </div>
          </li>
          <li>22</li>
          <li>23</li>
          <li>24</li>
          <li>25</li>
          <li>26</li>
          <li class="point">27
             <div class="mtpoint">
		          짧<br>
		          게<br>
		          고<br>
	         </div>
          </li>
          <li>28</li>
          <li>29</li>
          <li>30</li>
          <li>31</li>
        </ul>
     </div>
</div>




<%-- <div>
	<form action="" method="get">
		<a href ="GroupMain_3.jsp?year=<%=preYear %>&month=<%=preMonth%>">◀</a>
		<%=selectYear %>년
		<%=selectMonth %>월
		<a href ="GroupMain_3.jsp?year=<%=nextYear %>&month=<%=nextMonth%>">▶</a>
		<br><br>
		 <%=table %> 
		<%=calStr %>
	</form>
</div>     --%>

</body>
</html>
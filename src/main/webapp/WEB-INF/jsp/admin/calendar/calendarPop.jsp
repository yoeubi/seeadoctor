<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>See A Doctor</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/calendar/calendarPop.css?ver=1">

</head>
<body>
<div class="popWrap">

	<div id="popTitle">
		<h2><font color="#529dbc">접수현황</font></h2><h3> | ${dateStr}
		<a href="timeManagement.do?dateStr=${dateStr}" onclick="window.open(this.href, '팝업시간관리', 'width=650, height=500'); return false;"><button id="timeManageBnt">예약가능 시간 설정</button></a></h3>
	</div>

<div>

		<c:forEach var="reservation" items="${reserveList}">
			<div class="listBox">
			
				<c:choose>
				<c:when test="${reservation.user.gender eq 'F'.charAt(0)}">
				<c:set var="gender" value="여"/>
				</c:when>
				<c:otherwise>
				<c:set var="gender" value="남"/>
				</c:otherwise>
				</c:choose>
				
				<c:set var="time" value="${reservation.reserveTime.substring(0,2)}:${reservation.reserveTime.substring(2)}" />
			
				<p class="detailInfo"><font size="3px"><strong>${time} ${reservation.doctor.doctorName} 원장 　</strong></font> ${reservation.user.name} ${reservation.user.birth}(${gender}) | ${reservation.user.phone}　
				<img class="messageImg" src="${pageContext.request.contextPath}/images/admin/calendar/symptom.png" />
				</p>
				<div class="listBtns">
				
				<c:choose>
				<c:when test="${reservation.reserveStatus==2}">
					<div id="cancleReserv">취소된 예약</div>
				</c:when>
				<c:when test="${reservation.reserveStatus==4}">
					<p id="off" style="display:none;">미방문</p>
						<label class="switch">
						  <input type="checkbox" checked="checked">
						  <span class="slider round"></span>
						</label>
					<p id="on">진료완료</p>
				</c:when>
				<c:otherwise>
					<p id="off">미방문</p>
						<label class="switch">
						  <input type="hidden" value="${reservation.reserveSeq}">
						  <input type="checkbox">
						  <span class="slider round"></span>
						  <input type="hidden" value="${reservation.reserveStatus}">
						</label>
					<p id="on" style="display:none;">진료완료</p>
				</c:otherwise>
				</c:choose>
				</div>
				<p class="detailBox">└ ${reservation.symptom}</p>
			</div>
		</c:forEach>


	</div>
	
</div>




<script src="${pageContext.request.contextPath}/js/admin/calendar/calendarPop.js"></script>
</body>
</html>

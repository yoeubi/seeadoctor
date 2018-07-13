<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ taglib tagdir="" prefix="navi" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script> --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<style>
body { 
   font-family: 'NanumSquare', sans-serif; 
}

#boardMain{
	height: 100%;
}
#photo{
	z-index: 1;
    width: 1100px;
    height: 300px;
    margin: 0 auto;
    border: 1px solid #ccc;
    position: relative;
}	
#main{
	position: relative;
    z-index: 2;
    outline: 1px solid #ccc;
    width: 800px;
    height: auto;
    margin: 0 auto;
    margin-top: -150px;
}

#head_box{
/* 	border: 1px solid red; */
	width: 800px;
	height:330px;
	background: white;

}
#head_top_hr{
    margin-top:0px;
	height: 4px;
    background: #529dbc;
    border-top-width: 0px;
}	

#head_name_area{
	margin : 0 auto;
	line-height:40px;
	width: 800px;
    margin-top: 60px;
/* 	border: 1px solid; */
}
#head_name {
	line-height:80px;
	margin : 0 auto;
	width: 220px;
	height: 70px;
/* 	border: 1px solid; */
}

#head_tap_hr{
	background:#fafafa;
	width: 700px;
	margin: 0 auto;
}
#review_hr{
	width: 635px;
    height: 11px;
	margin: 4px 0px 0px 45px;	
}

.name{
    font-weight: bold;
	font-size:30px;
}

#head_btn_area{
	text-align: center;
 	height:120px; 
    position: relative; 
/* 	border: 1px solid; */
}

#head_btns a{
	float:left;
    padding: 15px 30px 0px 20px;
}

#head_btns {
	width:350px;
	height:110px;
	margin : 0 auto;
}
#head_btn_tap{
	height:45px;
}
#head_taps{
	width:320px;
	height:35px;
	margin : 10px 20px 10px 120px ;
	font-weight: bold;
	line-height: 33px;
}
#head_taps span{
	padding: 0px 20px 0px 0px;
}
#content_box{
/*  	width: auto; */
	height: auto;
}
#content_start_box{
/*  	width: auto; */
	height: auto;
}
#content_area{
 	width: 88%;
	height: 100%;
	margin: 60px 0px 0px 42px;
}
#content_area_photo{
 	width:400px;
	height: 100%;
	margin: 30px 30px 0px 135px;
}
#title{
	padding: 0px 45px;
}
#nickName{
	padding: 0px 0px 0px 453px;
}

#view_cnt{
	padding: 0px 45px;
}

#date{
      padding-left: 496px;
}


#content_area div{
	margin-bottom: 20px;
}

#review_row{
	font-weight: bold;
	height: 65px;
}


#search_area{
	line-height: 2;
}

#filearea{
	margin-left: 40px;
}
#file_span{
	display: inline-flex;
}
#file{
	background:#fafafa;
    width: 625px;
}
#btn_adm{
    width: 625px;
    padding-left: 300px;
    margin-top: 30px;
}
#content_box{
	width: 625px;
    margin: 20px 0px 0px 42px;
    height: 100%;
    overflow:hidden;
    position: relative;
}
#commentId{
	margin: 20px 0px 20px 90px;
    margin-bottom: 10px;
    width: 628px;
}
#commentList {
	position: relative;
	top: 30px;
	width: 880px;
}
.comment{
	margin-top: 30px;
}
#commentWrite > textarea{
	border: 1px solid #C7C7C7;
    width: 550px;
    height: 130px;
    margin-left: 90px;
    display: inline;
}
#btnCommentWrite{
	margin-bottom: 122px;
    height: 130px;
    width: 80px;
    margin-left: -3px;
}

#commentWrite{
	width: 734px;
	height:140px;
}

#review_hr1{
	width: 635px;
}

#buttons{
	position: relative;
	margin-top : 20px;
}
#btn_s{
    padding-bottom: 10px;
    width: 632px;
    margin-left: 85px;
}
#btn_update_delete{
	float: right;
}



</style>
</head>
<body>

<div id="boardMain">
	<div id="photo">
		지도 
	</div>
	
	<div id="main">
		<div id="head_box">
			
			<hr id="head_top_hr">
			
			<div id="head_name_area">
				<div id="head_name">
					<span class="name">메디스캔의원</span>
					<span class="category">내과</span>
				</div>
			</div>	
			
			<div id="head_btn_area">
				<div id="head_btns">
					<a>
						<img src="${pageContext.request.contextPath}/images/board/search.png" class="pull-right" id="btn_search"/><br>
						<span>길찾기</span>
					</a>
					<a id="2" href="${pageContext.request.contextPath}/reservation/reservationForm.do">
						<img src="${pageContext.request.contextPath}/images/board/booking.png" class="pull-right" id="btn_booking"/><br>
						<span>예약하기</span>
					</a>
					<a>
						<img src="${pageContext.request.contextPath}/images/board/unstar.png" class="pull-right" id="btn_unlike"/><br>
						<span>즐겨찾기</span>
					</a>	
				</div>
			</div>
			
			<div id="head_btn_tap">
				<hr id="head_tap_hr">
					<div id="head_taps">
						<a href="${pageContext.request.contextPath}/board/boardInfo.do">
							<span>주요정보</span>
						</a>	
						<a href="${pageContext.request.contextPath}/board/photo.do">
							<span>포토요약</span>
						</a>
						<a href="${pageContext.request.contextPath}/board/review.do">
							<span>리뷰</span>
						</a>
					</div>
				<hr id="head_tap_hr">
			</div>
		</div>
		
		<div id="content_start_box">
			
			<div id="content_area">
				
				<div id="review_row">
					<span id="title">${result.board.title}</span>
					<span id="nickName">${result.board.name}</span>
						<hr id="review_hr">
					<span id="view_cnt">${result.board.viewCnt}</span>
					<span id="date"><fmt:formatDate value="${result.board.regDate}" pattern="yyyy-MM-dd"/></span>
						<hr id="review_hr">
				</div>
				
				<div id="filearea">
					<c:forEach var="file" items="${files}">
						<img src="${pageContext.request.contextPath}/board/fileOutPut.do?filePath=${file.filePath}&sysName=${file.sysName}" style="width:100%; height:100%; margin:0 auto;"/><br>
						<button type="button" class="btn btn-default" style="margin:5px 0px 20px;"><a href="${pageContext.request.contextPath}/board/fileOutPut.do?filePath=${file.filePath}&sysName=${file.sysName}">다운로드</a></button><br> 
					</c:forEach>
				</div>
				<div id="content_box">${result.board.content}</div>
			</div>
		</div>
			
			<!-- 댓글파트 -->
			<div id="allComment">
			<form action="commentUpdate.json" method="post">
				<input type="hidden" name="no" value="${result.board.no}"/>
				<input type="hidden" name="commentNo" value="${commentNo}"/>
				
				<%-- 댓글 리스트--%>
				<div id="commentList"></div>
			</form>
			
			<div id="commentComment">
				<%-- 댓글입력파트 --%>
				<form role="form" id="rForm" class="clearfix" >
					<div class="comment">
						<div id="commentId">
							<label class="sr-only" for="name" >아이디</label> 
<%-- 		           			<input id="id" name="userSeq" type="text" hidden="hidden" value="${result.board.userSeq}" /> --%>
							<input type="text" id="name" name="name" class="form-control" value="${result.board.name}" readonly />
						</div>
						<div id="commentWrite" style="height: 140px;">
							<label class="sr-only" for="content">댓글내용입력</label>
							<textarea class="form-control" id="content" name="content" placeholder="내용을 입력하세요"></textarea>
							<button type="submit" id="btnCommentWrite" class="btn btn-primary btnCommentWrite">댓글쓰기</button>
						</div>
					</div>
				</form>
			</div>
			</div>
			
			<hr id="review_hr1">
			<div id="buttons">
						<div id="btn_s">
						<%-- 목록버튼 --%>
					<button type="button" class="btn btn-default"
						onclick='location.href="${pageContext.request.contextPath}/board/boardInfo.do"'>목록</button>
						<%-- 글쓰기버튼 --%>
					<button type="button" class="btn btn-default" id="writeid"
						onclick='location.href="${pageContext.request.contextPath}/board/writeForm.do"'>글쓰기</button>

					<div id="btn_update_delete">
<%-- 						<c:if test="${sessionScope.user.id == result.board.id}"> --%>
							<%-- 수정버튼 --%>
							<button type="button" class="btn btn-default" id="updateid"
								onclick='location.href="${pageContext.request.contextPath}/board/updateForm.do?no=${result.board.no}"'>수정</button>
							<%-- 삭제버튼 --%>
							<button type="button" class="btn btn-default" id="deleteid"
								onclick='location.href="${pageContext.request.contextPath}/board/delete.do?no=${result.board.no}"'>삭제</button>
<%-- 						</c:if> --%>
					</div>
			</div>	
	</div>
	
</div>

</body>

<script>
	//댓글등록
	$("rForm").submit(function(e){
		e.preventDefault();
		
		$.ajax({
			url : "<c:url value='/board/commentRegist.json'/>",
			type : "POST",
			data : {
				no: "${result.board.no}",
				content : $("rForm textarea[name='content']").val(),
	//			userSeq : $("rForm input[name='userSeq']").val(),
				name :$("rForm input[name='name']").val()
			},
			dataType: "json"
		}).done(function(result){
			if(!'${result.board.userSeq}'){
				$("#rForm input[name='userSeq']").val("");
			}
			$("#rForm textarea[name='content']").val("");
			makeCommentList(result);
		});
	});
	
	//댓글목록
	function makeCommentList(result){
		console.dir(result);
		var html="";
		html += '<table class="table table-bordered">';
		html += '	<colgroup>';
		html += '		<col width="7%">';
		html += '		<col width="*">';
		html += '		<col width="14%">';
		html += '		<col width="10%">';
		html += '	</colgroup>';
	}

	

</script>


</html>











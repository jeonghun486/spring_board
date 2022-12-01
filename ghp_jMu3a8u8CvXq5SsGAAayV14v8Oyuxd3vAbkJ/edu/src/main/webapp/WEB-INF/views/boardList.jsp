<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<!-- 	<style>
		 table, th, td{
		 	border: 1px solid #bcbcbc;
		 	}
		 table {
		 	width: 100%;
		 	height: 100%;
		 }
		 td {
		 	text-align: center;
		 }
	</style> -->
	
<title>board</title>
</head>
<body>
<div id="wrap">
	<div id="container">
		<div class="inner">
		<h2>board list</h2>
			<table>
				<thead>
					<tr>
						<th>NO</th>
						<th>글제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list}">
							<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
						</c:when>
						<c:when test="${!empty list}">
							<c:forEach items="${list}" var="list">
								<tr>
									<td><c:out value="${list.boardSeq}"/></td>
									<td>
									<a href="#this" name="title"><c:out value="${list.boardSubject}"/></a>
									<input type="hidden" id="boardSeq" value="${list.boardSeq }"/>
									</td>
									<td><c:out value="${list.boardWriter}"/></td>
									<td><c:out value="${list.boardHits}"/></td>
									<td>
										<fmt:formatDate value="${list.insDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
									</td>
									<%-- <td><c:out value="${list.insDate}"/></td>--%>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>
			<br/>
			<div>
				<button type="button" class="btn_black mr5" id="write">작성하기</button>
			</div>
		</div>
	</div>
</div>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#write").on("click", function(e){
				e.preventDefault();
				fn_openBoardWrite();
		});
		
		$("a[name='title']").on("click", function(e){
			e.preventDefault();
			fn_openBoardDetail($(this));
		});
	});
		
		function fn_openBoardWrite(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/board/openBoardWrite.do'/>");
			comSubmit.submit();
		}
		
		function fn_openBoardDetail(obj){
			var searchType = "S";
			
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/board/openBoardDetail.do' />");
			comSubmit.addParam("boardSeq", obj.parent().find("#boardSeq").val());
			comSubmit.addParam("searchType", searchType);
			comSubmit.submit();
		}
		
	</script>
</body>
</html>
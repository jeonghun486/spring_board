<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
$(document).ready(function(){
	$("#list").on("click", function(e){
		e.preventDetail();
		fn_openBoardList();
	})
	
	$("#update").on("click", function(e){
		e.preventDefault();
		fn_openBoardUpdate();
	})
})

function fn_openBoardList(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/board/openBoardList.do'/>");
	comSubmit.submit();
}

function fn_openBoardUpdate(){
	var boardSeq = "${map.BOARD_SEQ}";
	
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/board/openBoardUpdate.do'/> ");
	comSubmit.addParam("boardSeq", boardSeq);
	comSubmit.submit();
}
</script>
</body>
</html>
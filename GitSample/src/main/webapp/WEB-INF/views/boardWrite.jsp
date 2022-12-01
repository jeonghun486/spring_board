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
		e.preventDefault();
		fn_openBoardList();
	})
	$("#write").on("click", function(e){
		e.preventDefault();
		fn_insertBoard();
	})
})

function fn_openBoardList(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/board/openBoardList.do'/> ");
	comSubmit.submit();
}
function fn_insertBoard(){
	if($("#boardSubject").val() == ""){
		alert("제목을 입력해주세요");
		$("#boardSubject").focus();
		return false;
	}
	if($("#boardWriter").val() == ""){
		alert("작성자를 입력해주세요");
		$("#boardWriter").focus();
		return false;
	}
	if($("#boardContent").val() == ""){
		alert("내용을 입력해주세요");
		$("#boardContent").focus();
		return false;
	}
	
	var comSubmit = new ComSubmit("frm"");
	comSubmit.setUrl("<c:url value='/board/insertBoard.do' />");
	comSubmit.submit();
		
}

</script>
</body>
</html>
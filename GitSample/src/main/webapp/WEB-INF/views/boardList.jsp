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
$(document).ready(function (){
	$("#write").on("click", function(e){
		e.preventDefault();
		fn_openBoardWrite();
	});

	$("a[name='title']").on("click", function(e){
		e.preventDefault();
		fn_openBoardDetail();
	})
})

function fn_openBoardWrite(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/board/openBoardWrite.do'/>");
	comSubmit.submit();
}
function fn_openBoardDetail(obj){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/board/openBoardDetail.do'/>");
	comSubmit.addParam("boardSeq", obj.parent().find("#boardSeq").val());
	comSubmit.submit();
	}


</script>
</body>
</html>
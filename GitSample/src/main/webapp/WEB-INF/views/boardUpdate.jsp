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
$(doucment).ready(function(e){
	e.preventDefault();
	fn_openBoardList();
})

function fn_openBoardList(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/board/openBoardList'/>");
	comSubmit.submit();
}

function fn_updateBoard(){
	var dataSet = $("#frm").serialize();
	fn_common_ajax("updateBoard.do",dataSet,true);
}
function fn_deleteBoard(){
	var dataSet = $("#frm").serialize();
	fn_common_ajax("deleteBoard.do",dataSet,true);
}

function fn_callBack(data){
	if(data != null){
		
		var result = data.result;
		var callBack_Id = data.callBackId;
		
		if(callBack_Id == "updateBoard"){
			if(result == "SUCCESS"){
				alert("게시글 수정을 성공하였습니다.");
				fn_openBoardList();
			}else{
				alert("게시글 수정에 실패하였습니다.");
				return;
			}
		}else if(callBack_Id == "deleteBoard"){
			if(result == "SUCCESS"){
				alert("게시글 삭제를 성공하였습니다.");
				fn_openBoardList();
			}else{
				alert("게시글 삭제를 실패하였습니다.");
				return;
			}
		}
	}
}

</script>
</body>
</html>
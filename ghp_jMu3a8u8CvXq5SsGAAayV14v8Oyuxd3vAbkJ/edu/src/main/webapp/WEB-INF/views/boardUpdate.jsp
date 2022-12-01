<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
<div id="wrap">
	<div id="container">
		<div id="inner">
			<h2>게시글 상세</h2>
			<form id="frm">
				<table width="100%" class="table02">
				<caption><strong><span class="t_red">*</span> 표시는 필수입력 항목입니다.</strong></caption>
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tbody id="tbody">
					<tr>
						<th>제목<span class="t_red">*</span></th>
						<td>
							<input type="text" id="boardSubject" name="boardSubject" class="tbox01" value="${map.BOARD_SUBJECT }"/>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${map.BOARD_WRITER}</td>
					</tr>
					<tr>
						<th>내용<span class="t_red"></span>*</th>
						<td colspan="3">
							<textarea id="boardContent" name="boardContent" cols="50" rows="5" class="textarea01">${map.BOARD_CONTENT }</textarea>
						</td>
					</tr>
				</tbody>
				</table>
				<input type="hidden" id="boardSeq" name="boardSeq" value="${map.BOARD_SEQ }"/>
			</form>
				<div class="btn_right mt15">
					<button type="button" class="btn black mr5" id="list">목록</button>
					<button type="button" class="btn black mr5" id="update">저장</button>
					<button type="button" class="btn black" id="delete">삭제</button>
				</div>
		</div>
	</div>
</div>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#list").on("click", function(e){
				e.preventDefault();
				fn_openBoardList();
			});
			$("#update").on("click", function(e){
				e.preventDefault();
				fn_updateBoard();
			})
			$("#delete").on("click", function(e){
				e.preventDefault();
				fn_deleteBoard();
			})
		});
		
		function fn_openBoardList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/board/openBoardList.do' />");
			comSubmit.submit();
		}
		
		function fn_updateBoard(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/board/updateBoard.do' />");
			comSubmit.submit();
		}
		
		function fn_deleteBoard(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/board/deleteBoard.do' />");
			comSubmit.submit();
		}
		
		/*function updateBoard(){
			
			var dataSet = $("#frm").serialize();
			
			fn_common_ajax("updateBoard.do", dataSet, true);
		}
		
		 function deleteBoard(){
			
			var dataSet = $("#frm").serialize();
			
			fn_common_ajax("deleteBoard.do", dataSet, true);
		}
		
		function fn_callBack(data){
			
			if(data != null){
				
				var result = data.result;
				var callBack_Id = data.callBackId;
				
				if(callBack_Id == "updateBoard"){
					if(result == "SUCCESS"){
						alert("게시글 수정을 성공하였습니다.");
						fn_openBoardList();
					} else {
						alert("게시글 수정을 실패하였습니다.");
						return;
					}
				}else if(callBack_Id == "deleteBoard"){
					if(result == "SUCCESS"){
						alert("게시글 삭제 성공하였습니다.");
						fn_openBoardList();
					} else {
						alert("게시글 삭제 실패하였습니다.");
						return;
					}
				}
			}
		} */
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mvc.vo.BoardVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
<link href="../css/style2.css" rel="stylesheet">
<script> 

</script>
</head>
<body>
<header>
	<h2 class="mainTitle">글수정</h2>
</header>
<form name="frm">
<input type="hidden" name ="bidx" value="">
<!-- Bidx값을 가져와서 수정할 게시글의 제목 내용 작성자 등이 나오게된다. -->
	<table class="writeTable">
		<tr>
			<th>제목</th>
			<td><input type="text" name="subject" value=""></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="contents" rows="6"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="writer" value=""></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="uploadfile"></td>
		</tr>
	</table>
	
	<div class="btnBox">
		<button type="button" class="btn" onclick="check();">저장</button>
		<a class="btn aBtn" href="./detail.html">취소</a>
	</div>	
</form>
</body>
</html>
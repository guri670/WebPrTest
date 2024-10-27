<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link href="./style.css" rel="stylesheet">
<script> 

</script>
</head>
<body>
<header>
	<h2 class="mainTitle">글쓰기</h2>
</header>

<form name="frm">
	<table class="writeTable">
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content" rows="6"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password"></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file"></td>
		</tr>
	</table>
	
	<div class="btnBox">
		<button type="button" class="btn" onclick="check();">저장</button>
		<a class="btn aBtn" href="./list.html">취소</a>
	</div>	
</form>

</body>
</html>
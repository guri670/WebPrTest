<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글답변</title>
<link href="../css/style2.css" rel="stylesheet">
<script> 

</script>
</head>
<body>
<header>
	<h2 class="mainTitle">글답변</h2>
</header>
<form name="frm">
<input type="hidden" name="bidx" value="">
<input type="hidden" name="originbidx" value="">
<input type="hidden" name="depth" value="">
<input type="hidden" name="level_" value="">
	<table class="writeTable">
		<tr>
			<th>제목</th>
			<td><input type="text" name="subject"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="contents" rows="6"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" name="filename"></td>
		</tr>
	</table>
	
	<div class="btnBox">
		<button type="button" class="btn" onclick="check();">저장</button>
		<a class="btn aBtn" href="#" onclick="history.back();">취소</a>
	</div>	
</form>
</body>
</html>
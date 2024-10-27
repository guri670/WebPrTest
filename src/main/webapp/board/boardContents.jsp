<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글내용</title>
<link href="../css/style2.css" rel="stylesheet">
<script> 

</script>
</head>
<body>
<header>
	<h2 class="mainTitle">글내용</h2>
</header>
<article class="detailContents">
	<h2 class="contentTitle"></h2>
	<p class="write"></p>
	<div class="content">
	</div>

	<a href="#" class="fileDown">
	<img src="#">첨부파일입니다.
	</a>
	
</article>
	
<div class="btnBox">
	<a class="btn aBtn" href="./modify.aws">수정</a>
	<a class="btn aBtn" href="./delete.aws">삭제</a>
	<a class="btn aBtn" href="./reply.aws">답변</a>
	<a class="btn aBtn" href="./list.aws">목록</a>
</div>
<article class="commentContents">
	<form name="frm">
		<p class="commentWriter">admin</p>	
		<input type="text" name="content">
		<button type="button" class="replyBtn" onclick="check();">댓글쓰기</button>
	</form>
	
	
	<table class="replyTable">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>내용</th>
			<th>날짜</th>
			<th>DEL</th>
		</tr>
		<tr>
			<td>1</td>
			<td>홍길동</td>
			<td class="content">댓글입니다</td>
			<td>2024-10-18</td>
			<td>sss</td>
		</tr>
	</table>
</article>
</body>
</html>
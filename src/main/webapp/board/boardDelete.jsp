<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글삭제</title>
<link href="../css/style2.css" rel="stylesheet">
<script> 

</script>
</head>
<body>
<header>
	<h2 class="mainTitle">글삭제</h2>
</header>
<form name="frm">
<input type="hidden" name="bidx" value="">
	<table class="writeTable">
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password"></td>
		</tr>
	</table>
	
	<div class="btnBox">
		<button type="button" class="btn" onclick="check();">저장</button>
		<a class="btn aBtn" href="#" onclick="history.back();">취소</a>
	</div>	
</form>
</body>
</html>
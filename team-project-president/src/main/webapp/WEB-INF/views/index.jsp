<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<h1>JSP를 이용한 데이터 송수신 실습</h1>
		<hr>
	</div>

	<div>
		<h2>Send06.jsp ● -> Receive06.jsp ○</h2>
	</div>

	<div>
		<form action="/Receive06.jsp" method="post">
			이름 <input type="text" name="name"> 성별 <input type="radio"
				name="gender" value="M"> 남자 <input type="radio"
				name="gender" value="F"> 여자 <br>
			<br> 전공 <select name="major">
				<option value="국문">국문학</option>
				<option value="영문">영문학</option>
				<option value="컴공">컴퓨터공학</option>
				<option value="수학">수학</option>
				<option value="신방">신문방송학</option>
			</select> <br>
			<br> <select size="6" multiple="multiple" name="hobby">
				<option value="영화">영화감상</option>
				<option value="노래">노래감상</option>
				<option value="배드민턴">배드민턴</option>
				<option value="블로그">블로그 포스팅</option>
				<option value="책">책읽기</option>
				<option value="우표">우표수집</option>
			</select> <br>
			<br> <input type="submit" value="내용 전송" class="btn">
		</form>
	</div>
</body>
</html>
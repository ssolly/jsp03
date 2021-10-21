<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/session/logout.jsp</title>
</head>
<body>
	<% session.invalidate(); %>	<!-- session 모두 삭제하기 -->
	<a href="login.jsp">로그인 페이지 이동</a>  &ensp;&ensp;
	<a href="main.jsp">메인 페이지 이동</a> <br>
</body>
</html>
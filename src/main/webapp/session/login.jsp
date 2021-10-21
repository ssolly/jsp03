<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/session/login.jsp</title>
</head>
<body>
	<c:choose>
		<c:when test="${loginUser == null }">
			<form action="chkUser.jsp" method="post">
				<input type="text" name="id" placeholder="input id"><br>
				<input type="password" name="pwd" placeholder="input password"><br>
				<input type="submit" value="로그인">
			</form>
		</c:when>
		<c:otherwise>
			<b>${loginUser }</b>님 반갑습니다<br>
			<a href="main.jsp">메인 페이지 이동</a> &ensp;&ensp;
			<a href="logout.jsp">로그 아웃</a>
		</c:otherwise>
	</c:choose>
	
	<hr>
	session : ${loginUser }, ${sessionScope.loginUser } <br>
	
	
</body>
</html>
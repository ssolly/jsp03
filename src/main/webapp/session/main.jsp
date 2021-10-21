<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/session/main.jsp</title>
</head>
<body>
	<c:choose>
		<c:when test="${loginUser == null }">
			<script type="text/javascript">
						alert('비정상 접근 : 로그인 필요');
						location.href="login.jsp";
			</script>
			<%--<c:redirect url="login.jsp"/>  --%> <!-- 우선순위의 문제(서버→클라이언트'html,css,js') -->
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("${loginUser}님 환영합니다");
			</script>
			<h3>로그인 성공!</h3><br>
			<b>${loginUser }</b>님 환영합니다<br>
			<a href="login.jsp">로그인 페이지 이동</a> &ensp;&ensp;
			<a href="logout.jsp">로그 아웃</a>
		</c:otherwise>
	</c:choose>
</body>
</html>
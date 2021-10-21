<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/session/chkUser.jsp</title>
</head>
<body>
	<c:set var="dbId" value="abc"/>				<!-- DB역할:data 세팅 -->
	<c:set var="dbPwd" value="abc"/>
	<c:set var="inputId" value="${param.id }"/> <!-- 입력 값 받아오는 변수 -->
	<c:set var="inputPwd" value="${param.pwd }"/>
	<c:set var="dbNick" value="닉네임"/>
	
	<!-- if문 : 입력값과 data값의 일치 여부 확인 -->
	<c:choose>
		<c:when test="${dbId==inputId && dbPwd==inputPwd }">	<!-- if -->
			<c:set var="loginUser" value="${dbNick }" scope="session" /> <!-- session 설정 -->
			<c:redirect url="main.jsp"/>
		</c:when>
		<c:otherwise>											<!-- else -->
			<c:redirect url="login.jsp"/>
		</c:otherwise>
	</c:choose>
</body>
</html>
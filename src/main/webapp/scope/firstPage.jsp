<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/scope/firstPage.jsp</title>
</head>
<body>
<!--
	<scope범위>
	- page : 현재 페이지에서만 유지되는 값
	- request : 현재 페이지 또는 다음 페이지까지 유지되는 값
				단, request는 다음 페이지까지 전달하고자 하면 forward를 사용해야 한다
	- session : 웹 브라우저가 살아이쓴 동안(닫기 전까지) 유지된다
	- application : 서버가 살아있는 동안 유지된다 
-->
	<%
		pageContext.setAttribute("name","pageContext value");
		request.setAttribute("name", "request value");
		//request.getRequestDispatcher("secondPage.jsp").forward(request,response)
		session.setAttribute("name", "session value");
		application.setAttribute("name", "application value");
	%>
	
	name : ${name }<br>	<!-- ← 가장 작은 단위의 값을 출력 -->
	pageContext : <%= pageContext.getAttribute("name") %>
				 , ${pageScope.name } <br>
	request : <%= request.getAttribute("name") %>
			 , ${requestScope.name } <br>
	session : <%= session.getAttribute("name") %>
			 , ${sessionScope.name } <br>
	application : <%= application.getAttribute("name") %>
				 , ${applicationScope.name } <hr>
	
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="se" value="세션 설정 값" scope="session"/> <!-- scope:사용범위지정 -->
	session(jstl) : ${se }<hr>
	
	<a href="secondPage.jsp"> secondPage 이동</a>
</body>
</html>
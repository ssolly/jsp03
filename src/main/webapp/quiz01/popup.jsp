<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/quiz01/popup.jsp</title>
<script type="text/javascript">
	function makeCookie() {
		location.href="makeCookie.jsp"
	}
</script>
</head>
<body>
	<h2>공 지 사 항</h2>
		<h4>시스템 재정비로 인하여 익일00:00-05:00 사용이 중지될 예정입니다</h4>
		<input type="checkbox" onclick="makeCookie()"> 하루동안 열지않음
</body>
</html>
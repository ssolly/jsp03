<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/scope/thirdPage.jsp</title>
</head>
<body>
	pageContext : <%= pageContext.getAttribute("name") %> <br>
	request : <%= request.getAttribute("name") %> <br>
	session : <%= session.getAttribute("name") %> <br>
	application : <%= application.getAttribute("name") %> <hr>
	
</body>
</html>
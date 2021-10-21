<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/quiz01/makeCookie.jsp</title>
</head>
<body>
	<%  Cookie cookie = new Cookie("popupCookie","popupCookie");
		cookie.setMaxAge(10);	//86400초 : 24시간 
		response.addCookie(cookie); 
	%>
	<script type="text/javascript">
		window.close();
	</script>
</body>
</html>
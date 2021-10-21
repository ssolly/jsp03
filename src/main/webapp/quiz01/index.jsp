<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/quiz01/index.jsp</title>
</head>
<body>
	<h2> Index Page </h2>
	
	<%
		boolean bool=false;
		
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr) {
			if(c.getName().equals("popupCookie")) {
				bool = true;
			}
		}
		if (bool==false) { %>
		<script type="text/javascript">
			window.open("popup.jsp","","width=400, height=300,top=200,left=800");
		</script>
	<% } %>
	
	<%--
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<c:if test="<%=chk%>==false" />
			<script type="text/javascript">
				window.open("popup.jsp","","width=400, height=300,top=200,left=800");
			</script>
	 --%>
</body>
</html>
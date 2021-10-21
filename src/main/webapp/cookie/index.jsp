<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp03/cookie/index.jsp</title>
</head>
<body>
<!-- 
	- session : 서버에서 관리하는 값
	- cookie  : 클라이언트가 관리하는 값
 -->
	<h2>CARE_LAB</h2>
	<h3>환영합니다</h3>
	
	<%
		boolean bool=false;
		
	//사용자가 사용한 쿠키값을 모두 얻어오기 위한 배열
		Cookie[] cookieArr = request.getCookies();
		/*for(int i=0;i<cookieArr.length;i++) {
			out.print("name : " + cookieArr[i].getName() + " - ");
			out.print("value : " + cookieArr[i].getValue() + "<br>");
		}*/
		for(Cookie c : cookieArr) {
			out.print("name : " + c.getName() + " - ");
			out.print("value : " + c.getValue() + "<br>");
			
			if(c.getName().equals("testCookie")) {
				bool = true;
			}
		}
	//쿠키 생성
		Cookie cookie = new Cookie("testCookie","myCookie");
	// 쿠키 상태(시간) 유지
		cookie.setMaxAge(5);	
	// 사용자에게 쿠기 값 응답
		response.addCookie(cookie);
	%>
	<% if (bool==false) { %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=400, height=300,top=200,left=800");
	</script>
	<% } %>
</body>
</html>
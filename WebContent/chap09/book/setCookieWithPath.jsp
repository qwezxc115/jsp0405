<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie1 = new Cookie("path1", URLEncoder.encode("경로:/chap09", "utf-8"));
	cookie1.setPath("/chap09");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2", URLEncoder.encode("경로:", "utf-8"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3", URLEncoder.encode("경로:/", "utf-8"));
	cookie1.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4", URLEncoder.encode("경로:/chap09", "utf-8"));
	cookie1.setPath("/chap09");
	response.addCookie(cookie4);
%>

다음과 같이 쿠키를 생성했습니다. <br />
<%= cookie1.getName() %> = <%= cookie1.getValue() %>
[<%= cookie1.getPath() %>]
<br />
<%= cookie2.getName() %> = <%= cookie2.getValue() %>
[<%= cookie2.getPath() %>]
<br />
<%= cookie3.getName() %> = <%= cookie3.getValue() %>
[<%= cookie3.getPath() %>]
<br />
<%= cookie4.getName() %> = <%= cookie4.getValue() %>
[<%= cookie4.getPath() %>]
<br />
</body>
</html>
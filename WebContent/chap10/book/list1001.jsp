<%@page import="javax.websocket.Session"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session ="ture" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	Date tiome = new Date();
	SimpleDateFormat fomatter = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 세션 정보 </title>
</head>
<body>
세션ID: <%= session.getId()%> <br />
<%
	time.setTime(session.getCreationTime());
%>
</body>
</html>
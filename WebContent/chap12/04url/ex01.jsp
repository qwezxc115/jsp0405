<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>

	<c:url value ="https://news.naver.com" var="naverURL" scope="page"></c:url>
	
	<a href="https://www.naver.com">naver.com</a>
	
	<br />
	
	<a href="${naverURL }">naver.com</a>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus rerum eaque quos quia ab laboriosam tempore in possimus voluptatem nulla similique iste eos dolor quis nesciunt sit natus! Ut sunt.</p>
	<p>Fuga pariatur impedit consequatur dolor deserunt vel reprehenderit ipsam magni fugiat magnam esse laboriosam corporis maiores nulla nobis necessitatibus recusandae asperiores tempore fugit aspernatur modi earum a aperiam ea ullam.</p>
	
	<a href="https://www.naver.com">네이버</a>
	
	<br />
	
	<a href="${naverURL }">네이버</a>
</body>
</html>
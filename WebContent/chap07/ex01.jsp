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

<%-- include directive --%>
<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
<%-- 다른 파일의 내용을 현재 위치에 삽입 --%>
<%@ include file="module/header01.jsp"%>


<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum nihil iure quibusdam dignissimos laboriosam aliquam possimus sint optio tempore dolores totam harum ullam? Iste quod maiores optio vel eveniet id.</p>
	<h1>Totam?</h1>
	<p>Temporibus odio perspiciatis ut voluptatem qui blanditiis voluptate optio animi obcaecati praesentium nulla recusandae eos numquam dicta consequatur dolor corporis quam quas suscipit possimus nostrum ab nisi asperiores ducimus magnam.</p>
	<h1>Ut.</h1>
	<p>Explicabo suscipit neque quo necessitatibus error quos facere. Ipsa ratione ab minus mollitia officiis aut culpa praesentium atque quisquam sapiente nihil facilis ut recusandae accusantium aliquam quia doloribus rem eveniet.</p>
</div>

</body>
</html>
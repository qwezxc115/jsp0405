<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div>

	<%
	String startstr = request.getParameter("start");
	String endstr = request.getParameter("end");
	
	int start = Integer.parseInt(startstr);
	int end = Integer.parseInt(endstr);
	
	out.print("|");
	
	for (int i = start; i<=end; i++) {
	%>
		<a href="#"><%= i %></a> | 
	<%
	}
	%>
</div>
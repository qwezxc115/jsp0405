<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String cl = request.getParameter("calculator");
String str1 = request.getParameter("num1");
String str2 = request.getParameter("num2");

double num1 = Integer.parseInt(str1);
double num2 = Integer.parseInt(str2);
%>

<%

if (cl.equals("+")) { %>
       <%= num1 %> + <%= num2 %> = <%= num1+num2 %>
   <%
    } else if (cl.equals("-")) { %>
        <%= num1 %> - <%= num2 %> = <%= num1-num2 %>
   <%
    } else if (cl.equals("*")) { %>
        <%= num1 %> * <%= num2 %> = <%= num1*num2 %>
   <%
    } else {    %>
        <%= num1 %> / <%= num2 %> = <%= num1/num2 %>
   <%
    }
    %>
    
</body>
</html>
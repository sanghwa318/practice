<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
//파라미터 수신에 사용할 문자셋 설정 (각 페이지당 최 상단에서 1회 설정)
request.setCharacterEncoding("UTF-8");

//파라미터 받기
String userName = request.getParameter("user_name");
String age= request.getParameter("age");
String gender= request.getParameter("gender");

String[] favor= request.getParameterValues("favor[]");

String colors = String.join(",", favor);

%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Hello JSP</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1>이름: <%=userName%></h1>
<h1>나이: <%=age%></h1>
<h1>성별: <%=gender%></h1>
<h1>취향: <%=colors%></h1>
</body>
</html>
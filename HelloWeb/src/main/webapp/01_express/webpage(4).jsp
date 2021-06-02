<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%!
// 메서드나 상수를 정의하기 위한 선언블록. 블록을 시작하는 괄호에 "!"가 포함된다."
public String getMessage(){
    String msg= "Hello JSP";
    return msg;
}
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
<%
String msg1 =getMessage();
out.print("<h1>"+msg1+"</h1>");
%>
<%out.println("<h1>"+getMessage()+"</h1>");%>
<h1><%=getMessage()%></h1>

</body>
</html>
<%@page import="study.helloweb.model.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
request.setCharacterEncoding("UTF-8");
String deptno = request.getParameter("deptno");
Department department = null;

if (deptno != null && !deptno.equals("")) {
	department = new Department(); //데이터를 저장할 객체를 할당한다.
	if (deptno.equals("101")) { //deptno가 정해진 범위 안에서만 동작하도록 if문을 구성.
		department.setDeptno(101);
		department.setDname("컴퓨터공학과");
		department.setLoc("1호관");
	}
	if (deptno.equals("102")) {
		department.setDeptno(102);
		department.setDname("멀티미디어학과");
		department.setLoc("2호관");
	}
	if (deptno.equals("201")) {
		department.setDeptno(201);
		department.setDname("전자공학과");
		department.setLoc("3호관");
	}
	if (deptno.equals("202")) {
		department.setDeptno(202);
		department.setDname("기계공학과");
		department.setLoc("4호관");
	}

}
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>My JSP Page</title>
<!-- Twitter Bootstrap3 & jQuery -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>학과정보</h1>
	<!-- 검색폼 영역-->
	<form action="department.jsp" method="post">
		<div>
			<label for="deptno">학과번호: </label> <input type="text" name="deptno" value="<%=deptno %> ">
			<button type="submit">검색</button>
		</div>
	</form>
	<hr>
	<!-- 결과표시 영역-->
	<%
	if (department == null) {
	%>
	<h2>학과 번호로 검색하세요.</h2>
	<%
	} else {
	%>
	<table>
		<tr>
			<th>학과번호</th>
			<td><%=department.getDeptno()%></td>
		</tr>
		<tr>
			<th>학과이름</th>
			<td><%=department.getDname()%></td>
		</tr>
		<tr>
			<th>학과위치</th>
			<td><%=department.getLoc()%></td>
		</tr>
	</table>
	<%
	} //end if
	%>


</body>
</html>
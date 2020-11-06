<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
String code = request.getParameter("code");
String viewPageURI = null;

if(code.equals("A")) {
	viewPageURI = "/chap07/viewModule/a.jsp";
} else if(code.equals("B")) {
	viewPageURI = "/chap07/viewModule/b.jsp";
}	else if(code.equals("C")) {
	viewPageURI = "/chap07/viewModule/c.jsp";
}
%>
<jsp:forward page="<%= viewPageURI %>" />
</body>
</html>
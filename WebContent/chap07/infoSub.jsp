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
	String type = request.getParameter("type");
	if(type == null) {
		return;
	}
%>
<br />
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>타입</td>
	<td><b><%= type %></b></td>
</tr>
<tr>
	<td>특징</td>
	<td>
<% if (type.equals("A")) { %>
	강한 내구성.
<% } else if (type.equals("B")) { %>
	뛰어난 대처 능력	
<% } %>
	</td>
</tr>
</talbe>
</body>
</html>
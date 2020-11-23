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
<h1>입력된 숫자 :</h1>
<h1>첫번째 a ${param.param1}</h1>
<h1>두번째 b ${param.param2}</h1>
<hr />
<h1>같다 : ${param.param1 == param.param2 }</h1>
<h1>다르다 : ${param.param1 != param.param2 }</h1>
<h1>a > b : ${param.param1 > param.param2 }</h1>
<h1>a < b : ${param.param1 < param.param2 }</h1>
</body>
</html>
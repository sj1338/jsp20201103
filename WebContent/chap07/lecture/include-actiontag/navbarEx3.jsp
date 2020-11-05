<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h1>navbar</h1>
<%= request.getParameter("name") %>
<br />
<%= request.getParameter("value") %>
<%@page import="java.util.Iterator"%>
<%@page import="pack.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="pack.Readvalue"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Department Values</title>
</head>
<body>
<%
String dep_id=(String)request.getParameter("dep_id");
%>

<form action="viewdeptvalue.jsp">
dep_id:<input type="text" name="dep_id" value="<%=dep_id %>"> <br> 
depname:<input type="text" name="depname"> <br> 
description:<input type="text" name="description"><br>
count:<input type="text" name="count"><br>
<input type="submit" value="insert">
</form>
<h2>Department Values</h2>

<table border="1">
<tr>
<th>Department ID</th>
<th>Department Name</th>
<th>Description</th>
<th>Count</th>
</tr>
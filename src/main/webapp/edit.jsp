<%@page import="pack.Editvalue"%>
<%@page import="pack.User_Bean"%>
<%@page import="javax.inject.New"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String dep_id=(String)request.getParameter("dep_id");
Editvalue edit=new Editvalue();
User_Bean obj_userbean=edit.get_valuesofuser(dep_id);

%>



<h1>Edit Values</h1>
<form action="${pageContext.request.contextPath}/controler/editcontroler.jsp">
dep_id:<input type="text" name="dep_id" value="<%= dep_id%>"> <br> 
depname:<input type="text" name="depname" value="<%=obj_userbean.getDepname()%>"> <br>
description:<input type="text" name="description" value="<%=obj_userbean.getDescription()%>"> <br>
count:<input type="text" name="count" value="<%=obj_userbean.getCount()%>"><br>
<input type="submit" value="edit">
</form>

</body>
</html>
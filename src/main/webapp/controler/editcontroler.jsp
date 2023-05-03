<%@page import="pack.Editvalue"%>
<%@page import="pack.User_Bean"%>
<%@page import="pack.Viewdeptvalue"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String dep_id=request.getParameter("dep_id");
String depname=request.getParameter("depname");
String description=request.getParameter("description");
String count=request.getParameter("count");
User_Bean obj_User_Bean=new User_Bean();
obj_User_Bean.setDep_id(dep_id);
obj_User_Bean.setDepname(depname);
obj_User_Bean.setDescription(description);
obj_User_Bean.setCount(count);
Editvalue obj_Edit_values=new Editvalue();
obj_Edit_values.edit_user(obj_User_Bean);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/right/viewdept.jsp"
</script>
</body>
</html>
<%@ page import="pack.Deletevalue" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Department</title>
</head>
<body>
    <%
    String dep_id = request.getParameter("dep_id");
    Deletevalue obj_deletevalue = new Deletevalue();
    obj_deletevalue.delete_value(dep_id);
   
    %>
    <script type="text/javascript">
window.location.href="http://localhost:8080/right/viewdept.jsp"
</script>
</body>
</html>

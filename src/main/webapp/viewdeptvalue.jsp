<%@page import="pack.Viewdeptvalue"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pack.Database"%>
<%@page import="java.sql.Connection"%>


<%@page import="CRUD.Insert_Values"%>
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

Database run=new Database();
Connection dbconnection=run.get_Connection();

PreparedStatement ps=null;
try{

 String dep_id=request.getParameter("dep_id");
 String depname=request.getParameter("depname");
 String description=request.getParameter("description");
 String count=request.getParameter("count");
 
 Viewdeptvalue hii =new Viewdeptvalue();
 hii.insertdeptvalue(dep_id, depname, description, count);
 
}catch (Exception e){
	System.err.println(e);
}

%>
finised
<script type="text/javascript">

</script>
</body>
</html>
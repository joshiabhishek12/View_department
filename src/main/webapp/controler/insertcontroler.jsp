<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.DB_Connection"%>
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
 DB_Connection connection=new DB_Connection();
Connection dbconnection=connection.get_Connection();
PreparedStatement ps=null;
try{

 String emo_id=request.getParameter("emo_id");
 String first_name=request.getParameter("firstname");
 String user_name=request.getParameter("username");
 String address=request.getParameter("address");
 

 Insert_Values hello=new Insert_Values();
 hello.insert_values(emo_id, first_name, user_name, address);
}catch (Exception e){
	System.err.println(e);
}

%>
finised
<script type="text/javascript">

</script>
</body>
</html>
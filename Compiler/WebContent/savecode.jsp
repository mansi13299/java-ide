<%@page import="java.io.FileOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String class_name=request.getParameter("class_name");
	String code=request.getParameter("code");
	String path=application.getRealPath("/upload_files");
	path=path.concat("//"+class_name+".java");
	session.setAttribute("filepath", path);
	FileOutputStream fos=new FileOutputStream(path,false);
	fos.write(code.getBytes());
	response.sendRedirect("compile.jsp");
%>
</body>
</html>
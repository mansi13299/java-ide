<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
text-align: center
}
</style>
</head>
<body>
	<h1><b>JAVA COMPILER</b></h1>
	<form action="savecode.jsp" method="post">
		<b>Public Class Name</b>
		<input type="text" name="class_name"><br>
		<br>
		<b>Code</b>
		<br>
		<textarea rows="20" cols="50" name="code"></textarea><br>
		<br>
		<button type="submit">submit</button>
	</form>
</body>
</html>
<%@page import="java.io.InputStream"%>
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
		String path=(String)session.getAttribute("filepath");
		String command="javac "+path;
		Runtime rs=Runtime.getRuntime();
		Process ps=rs.exec(command);
		InputStream is=ps.getErrorStream();
		StringBuilder builder=new StringBuilder();
		while(true)
		{
			int i=is.read();
			;
			if(i==-1)
			{
				break;
				
			}
			builder.append((char)i);
		}
		if(builder.length()==0)
		{
			%>
			<h3>Successfully Compiled</h3>
			<%
			response.sendRedirect("runcode.jsp");
		}
		else
		{
			out.print("<h3>compilation error</h3><br>"+builder);
		}
	%>
</body>
</html>
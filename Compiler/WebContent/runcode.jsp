<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
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
		File file=new File(path);
		String name=file.getName();
		String location=file.getParent();
		String classname=name.substring(0,name.indexOf("."));
		String command="java -cp "+location+";.; "+classname;
		Runtime rt=Runtime.getRuntime();
		Process p=rt.exec(command);
		InputStream is=p.getErrorStream();
		InputStream iso=p.getInputStream();
		StringBuilder buildererror=new StringBuilder();
		StringBuilder builder=new StringBuilder();
		while(true)
		{
			int i=is.read();
			if(i==-1)
			{
				break;
				
			}
			buildererror.append((char)i);
		}
		while(true)
		{
			int i=iso.read();
			if(i==-1)
			{
				break;
				
			}
			builder.append((char)i);
		}
		
	%>
<h3>OUTPUT</h3>
<textarea style="color: blue; font-size: 20;" rows="10" cols="40" readonly>
<%=builder%>	
</textarea>
<h3>EXCEPTION</h3>
<textarea style="color: red; font-size: 15;" rows="10" cols="40" readonly>
<%=buildererror%>
</textarea>
</body>
</html>
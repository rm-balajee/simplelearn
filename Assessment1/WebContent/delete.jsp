<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Learn Assessment 1</title>
</head>
<body>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%

String filePath = application.getRealPath("").replace("\\", "/") + "files";
String file = (String)request.getParameter("file");
String delete_file = filePath + '/' + file;
File f=new File(delete_file);
if(f.delete())
	out.println("Sucessfully deleted file");
else
	out.println("Error in deleting file");
%>

<form action = "second.jsp" method = "post">
<input type = "submit" value = "Go Back" />
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Learn Assessment 1</title>
</head>
<body>
<%@page import="java.util.List"%>
<%@page import="pack.Assending"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*, java.util.Properties" %>
<%@ page import="javax.servlet.http.*" %>

<%

String filePath = application.getRealPath("").replace("\\", "/") + "files";
String file = (String)request.getParameter("file");

Assending obj = new Assending(); 
List list = obj.sorting(filePath);
int flag = 0;
for(Object s:list){
	if (s.toString().equalsIgnoreCase(file)) {
		flag = 1;
	}
}

if (flag == 0) {
	out.println ("The file not found");
}

else {
	out.println ("The file found");
}

%>

<form action = "second.jsp" method = "post">
<input type = "submit" value = "Go Back" />
</form>

</body>
</html>
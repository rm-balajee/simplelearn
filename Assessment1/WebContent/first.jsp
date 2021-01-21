<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Learn Assessment 1</title>
</head>
<body>
<p> <b> <u> Displaying the files in Assesnding Order wise Sorted Names </u> </b> </p>
</br>
<%@page import="java.util.List"%>
<%@page import="pack.Assending"%>
<%@page import="java.io.*,javax.servlet.*,java.util.Properties"%>
<% String path = application.getRealPath("").replace("\\", "/") + "files"; %>
<p> The "files" folder should be placed with in project folder </p>
<p> The files inside the "files" folder will taken for display </p>
<p> File Location: <%=path %> </p> </br>

<p> <b> <u> List of Files </u> </b> </p>
<% Assending obj = new Assending(); 
List list = obj.sorting(path);
for(Object s:list){ %>
	<%=  s.toString() %> </br>
<% } %>

</body>
</html>
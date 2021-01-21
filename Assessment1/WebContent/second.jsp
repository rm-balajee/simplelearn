<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Learn Assessment 1</title>
</head>
<body>
<p> <b> <u> To add the file in folder </u> </b> </p>
</br>
<form action = "upload.jsp" method = "post" enctype="multipart/form-data">
<input type = "file" name = "file" size = "50" />
<input type = "submit" value = "Add File" />
</form>

<p> <b> <u> To delete the file in folder </u> </b> </p>
</br>
<form action = "delete.jsp" method = "post">
File Name with Extension: <input type = "text" name = "file" />
<input type = "submit" value = "Delete File" />
</form>

<p> <b> <u> To search the file in folder </u> </b> </p>
</br>
<form action = "search.jsp" method = "post">
File Name with Extension: <input type = "text" name = "file" />
<input type = "submit" value = "Search File" />
</form>

</br></br>

<form action = "index.jsp" method = "post">
<input type = "submit" value = "Go Back to Main Page" />
</form>

</body>
</html>
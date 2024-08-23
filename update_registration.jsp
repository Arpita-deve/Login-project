<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<h2>Update Registration</h2>
	<form action="update" method="post">
	<pre>
	Email:<input type="text" name="email" value="<%=request.getAttribute("email")%>"/>
	Mobile:<input type="text" name="mobile" value="<%=request.getAttribute("mobile")%>"/>
	<input type="submit" value="update"/>
	</pre>
	
	</form>
</body>
</html>
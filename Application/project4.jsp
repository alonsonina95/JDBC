
<%@ page import="java.util.Vector" import="java.io.PrintWriter" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remote Desktop Management</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
</head>
<body>
<h1 style="
    text-align: center;
">Welcome to the Remote Desktop Management System</h1>
<hr style="
    color: black;
">
<div id="middle" style="
    text-align: center;
">
<p>
Welcome to the Spring 2020 Project 4 Enterprise System.<br>
A Remote Database Management System.<br><hr><br>
You are connected to the Project4 Enterprise System database. Please enter any valid SQL query or update statement. If no
query/update command is initially provided the Execute button will display all supplier information in the database. All 
execution results will appear below.<br>
</p>

	<form method="POST" action='/first-example/welcome' name="MySQL">
		<textarea id="textarea" name="textarea" rows="4" cols="50" style="height: 300px; width: 627px; margin-left: 0px; margin-right: 0px; "></textarea>
		<br/>
		<input type="submit" value="Execute" name="execute" style="width: 100px;">
		<input type="reset" value="Clear" name="clear" style="width: 100px;">
	</form>
</div>
<hr style="
    color: black;
">
<div id="footer" style="
    text-align: center;
">
<h3>Database Results</h3>
<%
	String results = "Run a Query";
	results = (String)request.getAttribute("results");
	PrintWriter mOut = response.getWriter();
	if(results == null){
		results = "";
	}%>
<%= results %>
</div>
</body>
</html>


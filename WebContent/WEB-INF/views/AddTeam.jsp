<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Roster - Add Team</title>
</head>
<body>
	<div class="header">
		<a href="home">Home</a>
		<h1>Add a Team</h1>
	</div>
	<div id="teams">
		<form action="teams" method="post">
			<label for="name">Team Name: </label><input type="text" name="name" />
			<button type="submit">Create Team</button>
		</form>
	</div>
</body>
</html>
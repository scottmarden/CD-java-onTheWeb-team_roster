<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="${team.name}" /> - Add Player</title>
</head>
<body>
	<div class="header">
		<a href="home">Home</a>
		<h1>Add a Player</h1>
	</div>
	<div id="players">
		<form action="player" method="post">
			<input type="hidden" value="${teamName}"/>
			<label for="firstName">First Name: </label><input type="text" name="firstName" />
			<label for="lastName">Last Name: </label><input type="text" name="lastName" />
			<label for="age">Age: </label><input type="text" name="age" />
			<button type="submit">Create Player</button>
		</form>
	</div>
</body>	
</html>
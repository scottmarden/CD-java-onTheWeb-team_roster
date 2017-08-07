<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Roster - Team Details</title>
</head>
<body>
	<h1>Team Details</h1>
	<a href="player">Add Player</a>
	<a href="home">Home</a>
	<div id="roster">
		<table cellpadding="10">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
			<c:forEach var="player" items="${players}">
			<tr>
				<td>
					<c:out value="${player.firstName}" />
				</td>
				<td>
					<c:out value="${player.lastName}" />
				</td>
				<td>
					<c:out value="${player.age}" />
				</td>
				<td>
					<a href="#">Remove</a>
				</td>
				
			</tr>
			</c:forEach>
		</table>
	
	
	
	</div>
</body>
</html>
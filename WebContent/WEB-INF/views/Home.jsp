<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Roster</title>
</head>
<body>
	<h1>Prototype Roster</h1>
	<a href="teams">New Team</a>
	
	<div id="teamList">
		<table cellpadding="10">
			<tr>
				<th>Team Name</th>
				<th>Players</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="team" items="${teams}">
			<tr>
				<td>
					<c:out value="${team.name}" />
				</td>
				<td>
					<c:out value="${team.players.size()}" />
				</td>
				<td>
					<a href="team?name=${team.name}">Details</a>
					<a href="#">Delete</a>
				</td>
				
			</tr>
			</c:forEach>
		</table>
	
	
	</div>
</body>
</html>
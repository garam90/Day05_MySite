<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Day05_MySite/assets/css/guestbook.css" rel="stylesheet" type="text/css">
<title>방명록</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/views/include/header.jsp"/>
		</div>
		<div id="content">
		<h1 class="pageTitle">DELETE</h1>
			<div id="guestbook" class="delete-form">
				<form method="post" action="/Day05_MySite/guest?action=delete">
					<input type='hidden' name="id"
						value="${param.id }">
					<table class="del_pass">
						<tr>
							<td>PASSWORD</td>
						</tr>
						<tr>
							<td><input type="password" name="password"></td>
						</tr>
						<tr>
							<td><input type="submit" value="DELETE"></td>
						</tr>
					</table>
				</form>
				<a href="/Day05_MySite/guest?action=guestbook">LIST</a>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp">
				<c:param name="type" value="main"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<c:import url="/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>
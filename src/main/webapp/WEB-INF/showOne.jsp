<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: gray">
	<div class="container">
		<div class="card mx-auto text-center m-5" style="box-shadow: 5px 10px black">
			<div class="card-body">
				<h4 class="card-title">${languages.name}</h4>
				<p class="card-text">${languages.creator }</p>
				<p class="card-text">${languages.currentVersion }</p>
				<a href="/languages" class="btn btn-sm btn-dark">Dashboard</a>
				<a href="/languages/${id}/edit" class="btn btn-sm btn-dark">Edit</a>
				<a href="/languages/delete/${id}" class="btn btn-sm btn-dark">Delete</a>	
			</div>
		</div>

	</div>
</body>
</html>
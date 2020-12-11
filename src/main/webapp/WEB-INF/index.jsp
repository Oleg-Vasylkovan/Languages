<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
	<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: lightgrey">
	<div class="m-5">
		<table class="table">
			<thead>
			
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Creator</th>
					<th scope="col">Version</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${language}" var="language">
				<tr>
					<th><a href="/languages/${language.id}">${language.name}</a></th>
					<th>${language.creator}</th>
					<th>${language.currentVersion}</th>
					<th><a href="/languages/delete/${language.id}"><button class="btn btn-danger">Delete</button></a>|<a href="/languages/${language.id}/edit"><button class="btn btn-warning">Edit</button></a></th>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="m-5">
		<form:form action="/languages/create" method="post" modelAttribute="languages" >
			<div class="form-group">
				<label>Name: </label>
				<input type="text" class="form-control" name="name">
				<label>Creator</label>
				<input type="text" class="form-control" name="creator">
				<label>Version</label>
				<input type="text" class="form-control" name="currentVersion">
				<button type="submit" class="btn btn-success m-3">Submit</button>
			</div>
		</form:form>
	</div>
</body>
</html>
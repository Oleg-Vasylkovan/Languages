<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="card mx-auto text-center m-5">
			<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
			 <input type="hidden" name="_method" value="put">
				<div class="form-group">
					<label>Name: </label>
					<input type="text" name="name" class="form-control">
					<label>Creator: </label>
					<input type="text" name="creator" class="form-control">
					<label>Version: </label>
					<input type="text" name="currentVersion" class="form-control">
					<button type="submit" class="btn btn-success m-3">Submit</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
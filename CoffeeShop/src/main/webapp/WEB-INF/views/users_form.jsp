<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update user info page</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/journal/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-5C8TGNupopdjruopVTTrVJacBbWqxHK9eis5DB+DYE6RfqIJapdLBRUdaZBTq7mE"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="/">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="">Login</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/register">Register</a></li>
				<li class="nav-item active"><a class="nav-link" href="/store">Store</a></li>
				<li class="nav-item active"><a class="nav-link" href="/admin">Admin</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<!-- A form without an action submits back to the same URL, which is what we want here. -->
		<form method="post">
			<div class="form-group">
				<label for="userName">UserName</label> <input class="form-control"
					id="userName" name="userName" value="${user.userName}" required
					minlength="2" Oautocomplete="off">
			</div>
			<div class="form-group">
				<label for="firstName">First Name</label> <input
					class="form-control" id="firstName" name="firstName"
					value="${user.firstName}" required minlength="2">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> <input class="form-control"
					id="lastName" name="lastName" value="${user.lastName}" required
					minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> <input class="form-control"
					id="lastName" name="lastName" value="${user.lastName}" required
					minlength="2" autocomplete="off">
			</div>
			<div>
				<tr>
					<td>Gender <br> <indput type="radio" name="gender"
							value="male"> Male <input type="radio" name="gender"
							value="female"> Female <input type="radio" name="gender"
							value="other"> Other </td>
				</tr>
			</div>
			<div>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email"></td>
				</tr>
			</div>
			<div>
				<tr>
					<td>Phone Number:</td>
					<td><input type="text" name="phonenumber"></td>
				</tr>
			</div>
			<div>
				<tr>
					<td>Password:</td>
					<td><input type="text" name="password"></td>
				</tr>
			</div>
			<button type="submit class="btnbtn-primary">Submit</button>
			<%--Reconhece o type para que o botão funcione sem precisar fazer nada, pode ser que precise estar dentro da tag form --%>

			<a href="/admin" class="btn btn-link">Cancel</a>
		</form>
	</div>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	<div class="container" style="padding-top:40px">
	
		<h4>Please fill the form to register:</h4>
		<br>
		
		<form action="insertUser">

			<table style="width: 35%">
				<tr>
					<td>UserName</td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="firstName"></td>
				</tr>

				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lastName"></td>
				</tr>

				<tr>
					<td>Gender <br> <input type="radio" name="gender"
						value="male"> Male <input type="radio" name="gender"
						value="female"> Female <input type="radio" name="gender"
						value="other"> Other
					</td>
				</tr>

				<tr>
					<td>Email:</td>
					<td><input type="text" name="email"></td>
				</tr>

				<tr>
					<td>Phone Number:</td>
					<td><input type="text" name="phoneNumber"></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="text" name="password"></td>
				</tr>

				<tr>
				<td>Administrator<br> <input type="radio" name="admin"
						value="false"> No <input type="radio" name="admin"
						value="true"> Yes
					</td> 
				</tr>

				<tr>
				<td><button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button></td>
				</tr>

			</table>
		</form>
	</div>

</body>
</html>
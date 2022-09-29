<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Relationship Management</title>
</head>
<body>
	<div class="container">
		<div class="p-3 mb-2 bg-success text-black">
			<h1 style="text-align:center">Customer Relationship Management</h1>
		</div>

		
		<hr>
		<form action="/CustomerManagement/customers/list" class="form-inline">

			<!-- Add a button -->
			<a href="/CustomerManagement/customers/showFormForAdd"
				class="btn btn-secondary btn-sm mb-3"> Add Customer </a>
		</form>


		<table class="table table-bordered table-striped">
			<thead class="thead bg-success text-black">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Customers}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/CustomerManagement/customers/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-secondary btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a
							href="/CustomerManagement/customers/delete?customerId=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
	<div class="row d-flex justify-content-center align-content-center">
		<a href="/CustomerManagement/customers/exit"
			class="btn btn-secondary  col-1"> Exit </a>

	</div>
</body>
</html>




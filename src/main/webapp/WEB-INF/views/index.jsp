<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Show</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">first name</th>
				<th scope="col">last name</th>
				<th scope="col">email</th>
				<th scope="col">phone number</th>
				<th scope="col">Delete</th>
				<th scope="col">Edit</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${students }" var="s">
				<tr>
					<th scope="row">${s.id }</th>
					<td>${s.fname }</td>
					<td>${s.fname }</td>
					<td>${s.email }</td>
					<td> ${s.phone }</td>
					<td><a href="delete/${s.id }"><i class="fa-solid fa-trash text-danger" style="font-size: 20px;"></i></a>
					</td>
					<td><a href="update/${s.id }"><i class="fas fa-pen-nib text-primary" style="font-size: 20px;"></i></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<a href="add-student"><b>Add Student</b></a>
</body>
</html>
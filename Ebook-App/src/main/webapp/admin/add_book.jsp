<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Book</title>
<%@include file="all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="navbar.jsp"%>
	<div class="container pt-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h4 class="text-center">Add Book</h4>

						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>


						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Book Name"
									name="book_name">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Author Name" name="author_name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="15000" name="price">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Book Categories</label> <select
									id="inputState" class="form-control" name="categories">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Book Status</label> <select
									id="inputState" class="form-control" name="status">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload image</label> <input
									type="file" class="form-control-file"
									id="exampleFormControlFile1" name="book_image">
							</div>


							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 125px">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>
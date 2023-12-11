<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="all_css.jsp"%>


<style type="text/css">
a {
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>



</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3 ">
				<a href="add_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-5x text-primary"></i>
							<h4>Add Books</h4>

						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-5x text-danger"></i>
							<h4>All Books</h4>

						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-5x text-warning"></i>
							<h4>Orders</h4>

						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3 ">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center">
							<i
								class="fa-solid fa-arrow-right-from-bracket fa-5x text-primary"></i>
							<h4>Logout</h4>
						</div>
					</div>
				</a>

			</div>
		</div>
	</div>

	<!-- Logout Modal -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h3>Are you sure want to logout</h3>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout"><button type="button"
								class="btn btn-danger">Logout</button></a>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

	<!-- End Logout Modal -->

	<div style="margin-top: 500px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
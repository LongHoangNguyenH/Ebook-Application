<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook</title>
<%@include file="component/all_css.jsp"%>

<style type="text/css">
.back-img {
	background: url("images/b.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
.crd-ho:hover{
	background-color: #e0d2bf;
}
</style>

</head>
<body style="background-color: #f7f7f7;">
	<%@include file="component/navbar.jsp"%>
		<div class="container-fluid back-img">
		<h2>EBook Management System</h2>
	</div> 
	
	
	<!-- Start Recent Book -->
	
	<div class="container" >
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin mb-2">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="text-center">
		<a href="" class="btn btn-danger btn-sm text-white mt-4">View more</a>
		</div>
	</div>
	<!-- End Recent Book -->
	
	<hr>
	
		<!-- Start New Book -->
	
	<div class="container" >
		<h3 class="text-center">New Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="col">
							<a href="" class="btn btn-danger btn-sm" style="width:180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
							<div class="row mt-1">
								<a href="" class="btn btn-success btn-sm ml-3" style="width:110px"><i class="fa-solid fa-circle-info mr-1"></i>View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"style="width:65px"><i class="fa-solid fa-eye mr-1"></i> 229</a>							
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="text-center">
		<a href="" class="btn btn-danger btn-sm text-white mt-4">View more</a>
		</div>
	</div>
	<!-- End New Book -->
	
	<hr>
	
		<!-- Start Old Book -->
	
	<div class="container" >
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="row text-center ">
							
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-2">229</a>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="row text-center ">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-2">229</a>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="row text-center ">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-2">229</a>
						</div>
					</div>
				</div>
			</div>
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/jv.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Author</p>
						<p>Categories:</p>
						<div class="row text-center ">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-2">229</a>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="text-center">
		<a href="" class="btn btn-danger btn-sm text-white mt-4">View more</a>
		</div>
	</div>
	<!-- End Old Book -->
	
	<%@include file="component/footer.jsp" %>
</body>
</html>
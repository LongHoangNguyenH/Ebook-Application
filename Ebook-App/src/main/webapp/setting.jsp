<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Settings</title>
<%@include file="component/all_css.jsp"%>
<style>
a{
text-decoration: none;
color: black;

}
</style>
</head>
<body style="background-color: #f7f7f7;">

<c:if test="${empty userobj }">
	<c:redirect url="login.jsp"/>
</c:if>

<%@include file="component/navbar.jsp" %>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>							
							</div>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>							
							</div>
							<h3>Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>							
							</div>
							<h3>Login & Security</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4 mt-3">
				<a href="user_address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa-solid fa-location-dot fa-3x"></i>				
							</div>
							<h3>Your Address</h3>
							<p>Edit Location</p>
						</div>
					</div>
				</a>
			</div>
			
			
			<div class="col-md-4 mt-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h3>My Order</h3>
							<p>Track your orders</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4 mt-3">
				<a href="helpline.jsp">
					<div class="card ">
						<div class="card-body text-center">
							<div class="text-danger ">
								<i class="fa-solid fa-user fa-3x"></i>			
							</div>
							<h3>Help Center</h3>
							<p>24*7 Services</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>
<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DAO.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Checkout</title>
<%@include file="component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="component/navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	
	<c:if test="${not empty sucMsg }">
		<div class="alert alert-success" role="alert">
  			${sucMsg }
		</div>
		<c:remove var="sucMsg" scope="session"/>
	</c:if>
	
	<c:if test="${not empty failed }">
		<div class="alert alert-danger" role="alert">
  			${failed }
		</div>
		<c:remove var="failed" scope="session"/>   
	</c:if>
	
	
	
	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">
				
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-success">Your select item</h3>
					<table class="table table-striped">
					  <thead>
					    <tr>
					      <th scope="row">Book Name</th>
					      <th scope="row">Author</th>
					      <th scope="row">Price</th>
					      <th scope="row">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <%
					  User u = (User)session.getAttribute("userobj");
					  
					  CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
					  List<Cart> carts = dao.getBookByUser(u.getId());
					  Double totalPrice=0.0;
					  for(Cart c: carts){
						  totalPrice = c.getTotal_price();
						  %>
						  <tr>
						  	<th scope="row"><%=c.getBookname() %></th>
						  	<td><%=c.getAuthor() %></td>
						  	<td><%=c.getPrice() %></td>
						  	<td>
						  	<a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>" class="btn btn-sm btn-danger">Remove</a>
						  	</td>
						  </tr>
						  <%
					  }
					  %>
					    <tr>
							<td>Total Price</td>
							<td></td>
							<td></td>
							<td><%=totalPrice %></td>
					    </tr>
					    
					  </tbody>
					</table>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Your details for your order</h3>
						<form>
						  <div class="form-row">
						    <div class="form-group col-md-6">
						      <label for="inputEmail4">Name</label>
						      <input type="text" class="form-control" id="inputEmail4" value="<%=u.getName()%>">
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputPassword4">Email</label>
						      <input type="email" class="form-control" id="inputPassword4" value="<%=u.getEmail()%>">
						    </div>
						  </div>
						  
						    <div class="form-row">
						    <div class="form-group col-md-6">
						      <label for="inputEmail4">Phone Number</label>
						      <input type="number" class="form-control" id="inputEmail4" value="<%=u.getPhone()%>">
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputPassword4">Address</label>
						      <input type="text" class="form-control" id="inputPassword4" value="">
						    </div>
						  </div>
						  
						  <div class="form-row">
						    <div class="form-group col-md-6">
						      <label for="inputEmail4">Landmark</label>
						      <input type="number" class="form-control" id="inputEmail4" value="">
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputPassword4">City</label>
						      <input type="text" class="form-control" id="inputPassword4" value="">
						    </div>
						  </div>
						  
						  
						  <div class="form-row">
						    <div class="form-group col-md-6">
						      <label for="inputEmail4">State</label>
						      <input type="number" class="form-control" id="inputEmail4" value="">
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputPassword4">PinCode</label>
						      <input type="text" class="form-control" id="inputPassword4" value="">
						    </div>
						  </div>
						  
						  <div class="form-group">
						  	<label>Payment Mode</label>
						  	<select class="form-control">
						  		<option>--Select--</option>
						  		<option>Cash on Delivery</option>
						  	</select>
						  </div>
						  
						  
						  <div class="text-center">
						  	<button class="btn btn-warning">Order Now</button>
						  	<a href="index.jsp" class="btn btn-success">Continue Shopping</a>
						  </div>
						  
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Book</title>
<%@include file="component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="component/navbar.jsp"%>

	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookbyId(bid);
	%>

	<div class="container p-3">
		<div class="row bg-white">
			<div class="col-md-6 text-center border p-5">
				<img alt="" src="book/<%=b.getPhotoName() %>" style="height: 200px; width: 150px">
				<h4 class="mt-3">
					Book Name: <span class=""><%=b.getBookname() %></span>
				</h4>
				<h4>
					Author: <span class=""><%=b.getAuthor() %></span>
				</h4>
				<h4>
					Category: <span class=""><%=b.getBookCategory() %></span>
				</h4>
			</div>
			<div class="col-md-6 text-center border p-5">
				<h2><%=b.getBookname() %></h2>
				
				<%
				if("Old".equals(b.getBookCategory())){
					%>
						<p>Contact to the Seller</p>
						<p class=""><i class="fa-solid fa-envelope mr-2"></i>email: <%=b.getEmail() %></p>
					<%
				}
				%>
				
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-money-check-dollar fa-3x"></i>
						<p>Cash on Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-arrow-rotate-left fa-3x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-truck-fast fa-3x"></i>
						<p>Free Shipping</p>
					</div>
				</div>
				
				<%
				
				%>
				
				<div class=" text-center p-3">
					<a href="" class="btn btn-primary"><i
						class="fa-solid fa-cart-shopping mr-1"></i>Continue</a> <a href=""
						class="btn btn-danger"><i class="fa-solid fa-dollar-sign"></i>200</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
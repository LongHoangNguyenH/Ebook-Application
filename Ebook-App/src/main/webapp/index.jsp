<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
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

.crd-ho:hover {
	background-color: #e0d2bf;
}
</style>

</head>
<body style="background-color: #f7f7f7;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2>EBook Management System</h2>
	</div>


	<!-- Start Recent Book -->

	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list_recent = dao.getRecentBooks();
			for (BookDtls b : list_recent) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center"
						style="width: 255px; height: 460px">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin mb-2">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>

						<p>
						<%
						if(b.getBookCategory().equals("Old")){
							%>
							Categories:<%=b.getBookCategory()%></p>
													<div class="col">
							<div class="row">
								 <a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-3" style="width: 110px"><i
									class="fa-solid fa-circle-info mr-1"></i>View Details</a> <a
									class="btn btn-danger btn-sm ml-1" style="width: 65px"><i
									class="fa-solid fa-dollar-sign mr-1"></i> <%=b.getPrice()%></a>
							</div>
						</div>
							<%
						}else{
							%>
							<div class="col">
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-3 mb-1"
									style="width: 180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add
									Cart</a> <a href="" class="btn btn-success btn-sm ml-3"
									style="width: 110px"><i
									class="fa-solid fa-circle-info mr-1"></i>View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1" style="width: 65px"><i
									class="fa-solid fa-dollar-sign mr-1"></i> <%=b.getPrice()%></a>
							</div>
						</div>
							<%
						}
						%>
						
						
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center">
			<a href="all_recent_books.jsp"
				class="btn btn-danger btn-sm text-white mt-4">View more</a>
		</div>
	</div>
	<!-- End Recent Book -->

	<hr>

	<!-- Start New Book -->

	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">
			<%
			List<BookDtls> list_new = dao.getNewBook();
			for (BookDtls b : list_new) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin mb-2">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="col">
							<div class="row">

								<%
								if (u == null) {
								%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-3 mb-1"
									style="width: 180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add
									Cart</a>

								<%
								} else {
								%>
								<a href="checkout?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
									class="btn btn-danger btn-sm ml-3 mb-1" style="width: 180px"><i
									class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a>
								<%
								}
								%>


								<a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-3" style="width: 110px"> <i
									class="fa-solid fa-circle-info mr-1"></i>View Details
								</a> <a class="btn btn-danger btn-sm ml-1" style="width: 65px">
									<i class="fa-solid fa-dollar-sign mr-1"></i> <%=b.getPrice()%></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center">
			<a href="all_new_books.jsp"
				class="btn btn-danger btn-sm text-white mt-4">View more</a>
		</div>

	</div>
	<!-- End New Book -->

	<hr>

	<!-- Start Old Book -->

	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<%
			List<BookDtls> list_old = dao.getOldBooks();
			for (BookDtls b : list_old) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin mb-2">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
												
						<%
						if(b.getBookCategory().equals("Old")){
							%>
							Categories:<%=b.getBookCategory()%></p>
													<div class="col">
							<div class="row">
								 <a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-3" style="width: 110px"><i
									class="fa-solid fa-circle-info mr-1"></i>View Details</a> <a
									class="btn btn-danger btn-sm ml-1" style="width: 65px"><i
									class="fa-solid fa-dollar-sign mr-1"></i> <%=b.getPrice()%></a>
							</div>
						</div>
							<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center">
			<a href="all_old_books.jsp"
				class="btn btn-danger btn-sm text-white mt-4">View more</a>
		</div>
	</div>
	<!-- End Old Book -->

	<%@include file="component/footer.jsp"%>
</body>
</html>
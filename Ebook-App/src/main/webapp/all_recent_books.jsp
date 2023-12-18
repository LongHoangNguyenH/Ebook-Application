<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Books</title>
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
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllRecentBooks();
			for (BookDtls b : list) {
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
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="col">
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-3 mb-1"
									style="width: 180px"><i class="fa-solid fa-cart-plus mr-1"></i>Add
									Cart</a> <a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-3"
									style="width: 110px"><i
									class="fa-solid fa-circle-info mr-1"></i>View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1" style="width: 65px"><i
									class="fa-solid fa-dollar-sign mr-1"></i> <%=b.getPrice()%></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>
	</div>
</body>
<%@include file="component/footer.jsp"%>
</html>
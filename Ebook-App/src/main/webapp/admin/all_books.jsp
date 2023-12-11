<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>

<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h1 class="text-center mt-2">All Books</h1>
	<c:if test="${not empty sucMsg}">
		<p class="text-center text-success">${sucMsg}</p>
		<c:remove var="sucMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg}</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author Name</th>
				<th scope="col">Price</th>
				<th scope="col">Book Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img src="../book/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getBookname()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_book.jsp?id=<%=b.getBookId()%>"
					class="btn btn-primary">Edit</a> <a
					href="../delete?id=<%=b.getBookId()%>" class="btn btn-danger">Delete</a></td>
			</tr>
			<%
			}
			%>


		</tbody>
	</table>
	<div>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
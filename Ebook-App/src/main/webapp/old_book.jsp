<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Old Book</title>
<%@include file="component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="component/navbar.jsp"%>
	
	<div class="pt-3">
		<h2 class="text-center">All Your Old Books </h2>
	</div>
	
	
	<c:if test="${not empty sucMsg}">
		<p class="text-center text-success">${sucMsg}</p>
		<c:remove var="sucMsg" scope="session"/>
	</c:if>
	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg}</p>
		<c:remove var="failedMsg" scope="session"/>
	</c:if>
	
	<div class="container p-3">
		<table class="table table-striped">
		  <thead class="bg-primary text-white">
		    <tr>
		      <th scope="col">Book Name</th>
		      <th scope="col">Author</th>
		      <th scope="col">Price</th>
		      <th scope="col">Category</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  <%
			  User u = (User)session.getAttribute("userobj");
			  String email = u.getEmail();
			  BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			  List<BookDtls> list =dao.getBookByOld(email, "Old");
			  for(BookDtls b: list){
				 %>
				 	<tr>
				      <td><%=b.getBookname() %></td>
				      <td><%=b.getAuthor() %></td>
				      <td><%=b.getPrice() %></td>
				      <td><%=b.getBookCategory() %></td>
				      <td>
				      	<a href="delete_old_book?email=<%=email %>&&bid=<%=b.getBookId()%>" class="btn btn-danger">Remove</a>
				      </td>
				    </tr>
				 <%
			  }
		  %>
		  
		  </tbody>
		</table>
	</div>


</body>
<%@include file="component/footer.jsp"%>
</html>
<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Old New Books</title>
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

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {
	form {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addCart_Success }">
		<div id="toast">${addCart_Success}</div>
		<script type="text/javascript">
			showToast();
			function showToast(content)
			{
				$('#toast').addClass("display");
				$('#toast').html(content);
				setTimeout(()=>{
					$("#toast").removeClass("display");
				},2000)
			}
		</script>
	</c:if>
	<c:if test="${not empty failed }">
		<p class="text-center text-danger">${failed}</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<%@include file="component/navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllNewBooks();
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
								 <a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-3"
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
<%@include file="component/footer.jsp"%>
</body>
</html>
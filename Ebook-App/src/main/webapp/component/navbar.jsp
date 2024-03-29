<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<div class="container-fluid"
	style="height: 10px; background-color: 303f9f"></div>

<div class="container-fluid mt-3">
	<div class="row">
		<div class="col-md-3 text-primary">
			<h2>
				<i class="fa-solid fa-book-open"></i>Ebooks
			</h2>

		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj }">
			
			<div class="col-md-3">
				<a href="" class="btn btn-success"><i class="fas fa-user mr-1"></i>${userobj.name}</a> 
				<a href="logout" class="btn btn-primary"><i class="fas fa-sign-in-alt mr-1"></i>Logout</a>
				<a href="checkout.jsp" class="mt-3">
					<i class="fa-solid fa-cart-shopping fa-2x"></i>				
				</a>
			</div>
		</c:if>
		<c:if test="${empty userobj}">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket mr-1"></i>Login</a> 
				<a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-plus mr-1"></i>Register</a>
			</div>
		</c:if>

	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom mt-3">

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><i
					class="fas fa-house mr-2"></i>Home</a>
			<li class="nav-item active"><a class="nav-link"
				href="all_recent_books.jsp"><i class="fa-solid fa-bookmark mr-2"></i>Recent
					Book</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="all_new_books.jsp"><i class="fa-solid fa-book mr-2"></i>New
					Book</a>
			<li class="nav-item active"><a class="nav-link "
				href="all_old_books.jsp"><i
					class="fa-solid fa-book-open-reader mr-2"></i>Old Book</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">

			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0 mr-3" type="submit">
				<i class="fa-solid fa-gear mr-2"></i>Setting
			</a>
			<button class="btn btn-light my-2 my-sm-0 " type="submit">
				<i class="fa-solid fa-file-contract mr-2"></i>Contact Us
			</button>
		</form>
	</div>
</nav>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="component/navbar.jsp"%>

<div class="container">
	<div class="row p-3">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Edit Address</h4>
					<form action="">
						<div class="form-row">
						    <div class="form-group col-md-6">
						      <label for="inputPassword4">Address</label>
						      <input type="text" class="form-control" id="inputPassword4" value="">
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputEmail4">Landmark</label>
						      <input type="number" class="form-control" id="inputEmail4" value="">
						    </div>
						  </div>
						  
						  
						  <div class="form-row">
						  	<div class="form-group col-md-4">
						      <label for="inputPassword4">City</label>
						      <input type="text" class="form-control" id="inputPassword4" value="">
						    </div>
						    <div class="form-group col-md-4">
						      <label for="inputEmail4">State</label>
						      <input type="number" class="form-control" id="inputEmail4" value="">
						    </div>
						    <div class="form-group col-md-4">
						      <label for="inputPassword4">PinCode</label>
						      <input type="text" class="form-control" id="inputPassword4" value="">
						    </div>
						  </div>
						  <div class="text-center">
						  	<button class="btn btn-warning">Add Address</button>
						  </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>	
<%@include file="component/footer.jsp" %>
</body>
</html>
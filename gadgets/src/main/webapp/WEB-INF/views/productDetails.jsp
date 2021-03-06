<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Electronic Gadgets</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
  <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="./resources/css/Details.css" rel="stylesheet" type="text/css"/>
  <link href="./resources/css/adding.css" rel="stylesheet" type="text/css"/>
  <script>
function sum() {
      var txtFirstNumberValue = document.getElementById('txt1').value;
      var txtSecondNumberValue = document.getElementById('txt2').value;
      var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
      if (!isNaN(result)) {
         document.getElementById('txt3').value = result;
      }
}
</script>
  <%@include file="header.jsp" %>
  
 <style>.carousel-inner > .item > img { width:100%; height:350px; } </style>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<br>
<body>
	<div class="container">		
			<div class="col-md-12 product-info">
					
				<h2><b>Product Information</b></h2>
					
				</div>
				<hr>
    <div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    <br>
                    <br>
						<center>
							<!-- <img id="item-display" src="./resources/images/bookimage1.jpg" alt="" width="40%" height="30%"></img> -->
							<img id="item-display" src="./resources/images/${product.p_image}" alt="" width="150" height="150"></img>
						</center>
					</div>
					
					
				</div>
					
					<div class="col-md-7">
					<div class="product-title">${product.p_name}</div>
				    <div class="product-Description">${product.p_description}</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
			<form action="productdetails">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="hidden"  name="prodid" value="${product.p_id}"  onkeyup="sum();"/><br><br>
					ProductPrice:&nbsp;&nbsp;&nbsp;
					<input type="text" id="txt1" name="prodprice" value="${product.p_price}" readonly onkeyup="sum();"/><br><br>
					ProductQuantity:<input type="text" id="txt2" name="prodquantity" value="" onkeyup="sum();"/>
					
					TotalPrice:<input type="text"  id="txt3" name="pricetot" value=""/>
					</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">
						<input type="submit" class="btn btn-success" value="ADDCART"/>
							
					</div>
			</form>
					
					<div class="btn-group wishlist">
					<a href="viewCart">
						  <button type="button" class="btn btn-danger">View Cart </button>
					</a>
                    </div>
				</div>
			</div> 
		
			</div>
		</div>
		
	</div>
	
</body>
</html>
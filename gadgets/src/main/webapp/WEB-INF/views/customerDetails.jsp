<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CustomerDetails</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
body{
    background-color: white;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h4 class="panel-title"><i>Shipping Details</i></h4>
			 			</div>
			 			<div class="panel-body">
			    		<form  action="summary">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="name" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="email" id="email" class="form-control input-sm" placeholder="Email">
			    					</div>
			    				</div>
			    			</div>
			    			<div class="row">
			    			<div class="form-group">
			    						<textarea name="textarea" id="textarea" class="form-control input-sm" placeholder="address"></textarea>
			    					</div>
			    			
                            <div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    				<input type="text" name="phone" id="Phone" class="form-control input-sm" placeholder="phone">
			    			</div></div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="date" id="myDate" name="date" value="2017-06-02" class="form-control input-sm" placeholder="">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			    <input type="submit" value="DETAILS" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</body>
</html>
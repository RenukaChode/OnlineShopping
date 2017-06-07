<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	<link href="./resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>Summary</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <h4>SHIPPING DETAILS</h4>
  <p></p>            
  <table class="table">
    <thead>
      <tr>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>CONTACT</th>
        <th>ADDRESS</th>
        <th>DATE</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${summary.name}</td>
        <td>${summary.email}</td>
        <td>${summary.contact}</td>
        <td>${summary.address}</td>
        <td>${summary.date}</td>
      </tr>
      
    </tbody>
  </table>
  <div class="row">
  <a href="ok"><button class="btn-btn-success" style="position:absolute;left:600px;">OK</button></a></div>
</body>
</html>
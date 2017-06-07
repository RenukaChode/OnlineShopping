<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Electronics</title>

<style type="text/css">
</style>
</head>
<body>
	<!-- starting header navigation bar -->
	<!-- <nav class="navbar navbar-inverse">
	<div class="container-fluid"> -->
	<nav class="navbar" style="background: black">
	<div class="container">
		<a class="navbar-brand" href="./"> <img
			src='<c:url value="/resources/images/logo.png" />' width="75px"
			height="20px" style="position: absolute; top: 0px; left: 0px;"
			class="img-responsive" />
		</a>

		<!-- Collect the nav links, forms, and other content for toggling -->

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../" id="ho">Home</a></li>
				<c:if test="${pageContext.request.userPrincipal.name  != 'admin@gmail.com'}">
				<li class="dropdown"><a id="pro" class="dropdown-toggle"
					data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<c:forEach items="${catlist}" var="p">
							<li><a href="productfilter?id=${p.c_id}">${p.c_name}</a></li>
						</c:forEach>
					</ul></li>
					</c:if>
				
				<li>
					<c:if test="${pageContext.request.userPrincipal.name  == 'admin@gmail.com'}">
						<li><a id="ad" class="dropdown-toggle"
							href="<c:url value="admin/add"/>" role="button" aria-haspopup="true"
							aria-expanded="false">Add</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name  == null}">
						<li><a class="dropdown-toggle"
							href="<c:url value="admin/add"/>" role="button"
							aria-haspopup="true" aria-expanded="false">Add</a></li>
					</c:if>
				</li>

			</ul>


			<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
				<li><a href="<c:url value="/admin" />">Admin</a></li>
			</c:if>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name == null }">

					<li><a href="registration">Signup<span
							class="glyphicon glyphicon-log-in"></span></a></li>

				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href='<c:url value="/logout" />'>Signout</a></li>
				</c:if>
		</div>
	</div>
	</nav>
	
</body>
</html>



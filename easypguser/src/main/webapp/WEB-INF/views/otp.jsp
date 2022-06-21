<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<div id="page-wrapper">
		<div class="row">
			<%@include file="header.jsp"%>

			<!--	Page Loader 
=============================================================-->
			<div
				class="page-loader position-fixed z-index-9999 w-100 bg-white vh-100">
				<div
					class="d-flex justify-content-center y-middle position-relative">
					<div class="spinner-border" role="status">
						<span class="sr-only">Loading...</span>
					</div>
				</div>
			</div>


			<!--	Banner
		===============================================================-->
			<div class="bg-gray full-row py-5 page-banner">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h3 class="page-name float-left text-secondary mt-1 mb-0">OTP</h3>
						</div>
						<div class="col-md-6">
							<nav aria-label="breadcrumb" class="float-left float-md-right">
								<ol class="breadcrumb bg-transparent m-0 p-0">
									<li class="breadcrumb-item"><a
										href="/easypguser/user/home">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">register</li>
									<li class="breadcrumb-item active" aria-current="page">otp</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<div class="full-row">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="submit-form">
								<form:form method="post" modelAttribute="cpass"
									action="/easypguser/user/checkOtp">
									<div class="description">
										<h5 class="text-secondary">OTP</h5>
										<hr>
										<div class="row">
											<div class="col-lg-4 col-md-4">
												<div class="form-group">

													<!-- <span class="ml-2 fa-2x"><i title="Property Title" class="fas fa-question-circle text-secondary"></i></span> -->
													<form:input type="text" name="otp" path="otp"
														class="form-control" placeholder="enter otp" />

												</div>
											</div>
										</div>
										<%
											if (request.getParameter("errorMsg") != null) {
										%>
										<div style="color: red; margin-left: 70px"><%=request.getParameter("errorMsg")%></div>
										<%
											}
										%>
										<div>
											<button type="submit" class="btn btn-primary mt-3">NEXT</button>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="footer.jsp"%>

			<!-- Scroll to top -->
			<a href="#" class="bg-secondary text-white hover-text-secondary"
				id="scroll"><i class="fas fa-angle-up"></i></a>
			<!-- End Scroll To top -->


			<%@include file="script.jsp"%>
</body>
</html>
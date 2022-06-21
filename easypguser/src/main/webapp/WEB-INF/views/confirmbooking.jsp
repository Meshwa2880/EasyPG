<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

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
							<h3 class="page-name float-left text-secondary mt-1 mb-0">Confirm
								Booking</h3>
						</div>
						<div class="col-md-6">
							<nav aria-label="breadcrumb" class="float-left float-md-right">
								<ol class="breadcrumb bg-transparent m-0 p-0">
									<li class="breadcrumb-item"><a
										href="/easypguser/user/home">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Booking</li>
									<li class="breadcrumb-item active" aria-current="page">Confirm
										Booking</li>
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
								<form:form method="post" modelAttribute="booking"
									action="/easypguser/booking/confirmbooking">
									<form:input type="hidden" name="userId" path="userId" id="userId"/>
									<form:input type="hidden" name="propertyId" path="propertyId" id="propertyId"/>
									<div class="description">
										<h5 class="text-secondary">Confirm booking</h5>
										<hr>
										<div class="row">
											<div class="col-lg-4 col-md-4">
												<div class="form-group">
													Are you sure to Confirm the booking? 
													please refer to the terms and conditions given below:
													 1)In all the houses which
													are under owners confirmation policy, tenants need to pay
													the Security deposit 4 days prior to the move-in date for
													verification by the Owner. 
													2) Only the owner of the house has a right to confirm or decline
													any tenants booking. In case the owner decline any
													tenants booking, a notification via mail will be
													sent to the tenant on the same day. When the owner declines
													any tenants booking, the booking will be canceled
													automatically. Once the booking is declined by the owner,
													the tenant can opt for any other property listed on
													Easy-PG's portal.
													3)Tenant needs to pay two months of rent as security deposit,referred as token deposit at the time of booking via E-payment.
													The rest of the rent must be paid by cash.<br>

													<!-- <span class="ml-2 fa-2x"><i title="Property Title" class="fas fa-question-circle text-secondary"></i></span> -->
													<label><b>
													Move-In Date</b></label>&nbsp,&nbsp<form:input type="date" path="moveinDate" name="moveinDate" id="moveinDate" placeholder="select your move-in date"/>
													<input class="btn btn-primary btn-round" type="submit"
													value="Confirm Booking" formaction="/easypguser/booking/addBooking" />
													<input class="btn btn-primary btn-round" type="submit"
													value="Cancel Booking" formaction="/easypguser/user/home" />
													
											
												</div>
											</div>
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
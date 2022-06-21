<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../head.jsp"%>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">
		<%@include file="../sidebar.jsp"%>
		<div class="main-panel">
			<%@include file="../header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-icon"
									data-background-color="rose">
									<i class="material-icons">perm_identity</i>
								</div>
								<div class="card-content">
									<h4 class="card-title">
										User Profile<small class="category"></small>
									</h4>
									<form:form class="form" method="post" modelAttribute="user"
										enctype="multipart/form-data">
										<center>
											<div class="fileinput fileinput-new text-center"
												data-provides="fileinput">
												<div class="fileinput-new thumbnail img-circle">
													<img
														src="/easypgadmin/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png"
														alt="...">
												</div>
												<div
													class="fileinput-preview fileinput-exists thumbnail img-circle"
													style=""></div>
												<div>
													<span class="btn btn-round btn-rose btn-file"> <span
														class="fileinput-new">Add Photo</span> <span
														class="fileinput-exists">Change</span> <form:input
														type="hidden" path="hid"/><form:input type="file" path="profileImage" name="..." name="profileImage"/></span>
													<br> <a href="#pablo"
														class="btn btn-danger btn-round fileinput-exists"
														data-dismiss="fileinput"><i class="fa fa-times"></i>
														Remove</a>
												</div>
											</div>
										</center>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group label-floating">
													<label class="control-label">Email Address</label> <form:input
														type="text" class="form-control" path="email" name="email"/>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group label-floating">
													<label class="control-label">First Name</label> <form:input
														type="text" class="form-control" path="fname" name="fname"/>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group label-floating">
													<label class="control-label">Last Name</label> <form:input
														type="text" class="form-control" path="lname" name="lname"/>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group label-floating">
													<label class="control-label">Date Of Birth</label> <form:input
														type="text" class="form-control" path="dob" name="dob"/>
												</div>
											</div>
											<div class="col-md-6">
												<label> Gender <small>*</small>
												</label>
											</div>
											<br>
											<div class="radio">
												<label> <form:input type="radio" name="optionsRadios"
													checked="true" path="gender" name="gender"/><span class="circle"></span><span
													class="check"></span> Male
												</label> <label> <form:input type="radio" name="optionsRadios"
													checked="true" path="gender" name="gender"/><span class="circle"></span><span
													class="check"></span> Female
												</label>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group label-floating">
													<label class="control-label">Mobile Number</label> <form:input
														type="text" class="form-control" path="mobileNo" name="mobileNo"/>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group label-floating">
													<label class="control-label">Zip Code</label> <form:input
														type="text" class="form-control" path="pincode" name="pincode"/>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group label-floating">
													<label class="control-label">Address</label> <form:input
														type="text" class="form-control" name="address" path="address"/>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-3">
												<div class="form-group label-floating">
													<form:select class="selectpicker"
														data-style="btn btn-primary btn-round"
														title="Single Select" data-size="7" tabindex="-98"
														style="background-color: #ec407a" path="area" name="area"><form:option
															class="bs-title-option" value="select">Select Area</form:option>
														<form:option value="Area 1">Area 1</form:option>
														<form:option value="Area 2">Area 2</form:option>
														<form:option value="Area 3">Area 3</form:option>
													</form:select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group label-floating">
													<form:select class="selectpicker"
														data-style="btn btn-primary btn-round"
														title="Single Select" data-size="7" tabindex="-98"
														style="background-color: #ec407a" path="city" name="city"><form:option
															class="bs-title-option" value="select">Select City</form:option>
														<form:option value="City 1">City 1</form:option>
														<form:option value="City 2">City 2</form:option>
														<form:option value="City 3">City 3</form:option>
													</form:select>
												</div>
											</div>
										</div>

										<div class="clearfix"></div>

										<c:choose>
												<c:when test="${edit}">
													<input class="btn btn-primary btn-round" type="submit"
														value="Update" formaction="/easypgadmin/user/updateUser" />
												</c:when>
												<c:otherwise>
													<input class="btn btn-primary btn-round" type="submit"
														value="Register" formaction="/easypgadmin/user/addUser" />
												</c:otherwise>
											</c:choose>
											<input class="btn btn-primary btn-round" type="submit"
												value="Back" formaction="/easypgadmin/user/userList" />
									
										</form:form>
								</div>
							</div>
						</div>
					</div>

					<%@include file="../footer.jsp"%>
				</div>
			</div>
</body>
<!--   Core JS Files   -->
<%@include file="../corejsfiles.jsp"%>
</html>
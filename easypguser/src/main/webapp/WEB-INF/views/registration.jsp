<%@page import="com.easypguser.model.State"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.easypguser.model.State"%>
<%@ page import="com.easypguser.model.City"%>
<%@ page import="com.easypguser.model.Area"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<div id="page-wrapper">
		<div class="row">


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
							<h3 class="page-name float-left text-secondary mt-1 mb-0">
								<c:choose>
									<c:when test="${edit}">
													Edit Profile
												</c:when>
									<c:otherwise>
													Registration
												</c:otherwise>
								</c:choose>
							</h3>
						</div>
						<div class="col-md-6">
							<nav aria-label="breadcrumb" class="float-left float-md-right">
								<ol class="breadcrumb bg-transparent m-0 p-0">
									<li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page"><c:choose>
											<c:when test="${edit}">
													Edit Profile
												</c:when>
											<c:otherwise>
													Registration
												</c:otherwise>
										</c:choose></li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<div class="full-row">
				<div class="container">
					<div class="row">
						<div class="col-md-7">
							<div class="mb-5">
								<h4 class="mb-4 text-secondary">Welcome</h4>

							</div>
							<div class="login-condition flat-small flat-primary">
								<h5 class="mb-4 text-secondary">Keep in a mind a few basic
									password rules :</h5>
								<div class="row">
									<div class="col-md-8 col-xl-6">
										<ul>
											<li><i class="flaticon-checked text-primary"></i>Change
												your passwords periodically</li>
											<li><i class="flaticon-checked text-primary"></i>Avoid
												re-using password for multiple site</li>
											<li><i class="flaticon-checked text-primary"></i>Use
												complex characters including uppercase and number</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-5">
							<div class="mt-sm-50">
								<a class="down-active text-secondary"> <c:choose>
										<c:when test="${edit}">
												Edit Profile
											</c:when>
										<c:otherwise>
												Registration
											</c:otherwise>
									</c:choose></a>
								<form:form class="mt-5 icon-form" method="post"
									modelAttribute="user" enctype="multipart/form-data">
									<form:input type="hidden" name="userId" path="userId"
										id="userId" />
									<c:choose>
										<c:when test="${edit}">
											<div>
												<div id="dvPreview">
													<img alt=""
														src="/easypguser/resources/images/profilePicture/${user.profilePicture}"
														style="height: 100px; width: 100px">
												</div>
												<input type="file" id="profilePicture" name="profilePicture"
													path="profilePicture"
													value="D:/Jva_tools/apache-tomcat-9.0.22/webapps/easypguser/resources/images/profilePicture/${user.profilePicture}" />
												<hr />
												<br />

											</div>

										</c:when>
										<c:otherwise>
											<div>
												<div id="dvPreview"></div>
												<input type="file" id="profilePicture" name="profilePicture"
													path="profilePicture" />
												<hr />
												<br />

											</div>

										</c:otherwise>
									</c:choose>



									<div class="form-group user">
										<label>First Name</label>
										<form:input type="text" class="form-control bg-gray"
											placeholder="" name="fname" path="fname" pattern="[A-Za-z]{1,}" 
											title="First Name should only conatins alphabets" required="true"/>
									</div>

									<div class="form-group user">
										<label>Last Name</label>
										<form:input type="text" class="form-control bg-gray"
											placeholder="" name="lname" path="lname" pattern="[A-Za-z]{1,}" 
											title="First Name should only conatins alphabets" required="true"/>
									</div>

									<div class="form-group phone">
										<label>Mobile Number</label>
										<form:input type="text" class="form-control bg-gray"
											value="91" name="mobileNo" path="mobileNo" pattern="[1-9]{10}" title="Enter Valid Mobile Number" required="true"/>
									</div>

									<div class="form-group calender">
										<label>Date Of Birth</label> <br>
										<form:input type="date" class="form-control bg-gray"
											name="dob" path="dob" required="true" />
									</div>

									<div class="form-group">
										<label>Gender</label><br>
										<form:radiobutton style="display:''" name="gender"
											value="male" path="gender" checked="checked"/>
										Male &nbsp &nbsp &nbsp
										<form:radiobutton id="male" style="display:''" name="gender"
											value="female" path="gender" />
										Female &nbsp &nbsp &nbsp

									</div>
									<div class="form-group address">
										<label>Residential Address</label>
										<form:input type="text" class="form-control bg-gray"
											placeholder="" name="address" path="address" required="true"/>
									</div>
									<div class="form-group">
										<label>State</label>
										<form:select class="form-control bg-gray" path="stateId"
											name="stateId" id="stateId">
											<option value=0 label="Select State" disabled="true" />
											<c:forEach var="s" items="${liststate}">
												<form:option value="${s.stateId}" label="${s.name}" />
											</c:forEach>
										</form:select>
									</div>
									<div class="form-group">
										<label>City</label>
										<form:select class="form-control bg-gray" path="city_id"
											name="city_id" id="cityId">
											<option value=0 label="Select City" disabled="true" />
											<c:forEach var="c" items="${listcity}">
												<form:option value="${c.city_id}" label="${c.name}" />
											</c:forEach>
										</form:select>
									</div>
									<div class="form-group">
										<label>Area</label>
										<form:select class="form-control bg-gray" path="areaId"
											id="areaId">
											<option value=0 label="Select Area" disabled="true" />
											<c:forEach var="a" items="${listarea}">
												<form:option value="${a.areaId}" label="${a.name}" />
											</c:forEach>
										</form:select>
									</div>
									<div class="form-group zip">
										<label>Pin Code</label>
										<form:input type="text" name="pincode" path="pincode" placeholder="eg. 380015"
											class="form-control bg-gray" pattern="[0-9]{6}" title="Enter Valid Pin Code eg-380015" required="true"/>
									</div>
									<div class="form-group email">
										<label for="exampleInputEmail2">Email address</label>
										<form:input id="exampleInputEmail2" type="email" name="email"
											path="email" class="form-control bg-gray" placeholder="" required="true"/>
									</div>
									<c:choose>
										<c:when test="${edit}">
											<form:input type="hidden" path="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="true"/>
										</c:when>

										<c:otherwise>
											<div class="form-group password">
												<label for="exampleInputPassword1">Password</label>
												<form:input id="exampleInputPassword1" name="password"
													path="password" type="password"
													class="form-control bg-gray" placeholder="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="true"/>
											</div>
											<div class="form-group password">
												<label for="exampleInputPassword2">Re-enter Password</label>
												<form:input id="exampleInputPassword2" name="cpassword"
													path="cpassword" type="password"
													class="form-control bg-gray" placeholder="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="true"/>
											</div>
										</c:otherwise>
									</c:choose>
									<div class="text-center">
										<%
											if (request.getParameter("errorMsg") != null) {
										%>
										<div style="color: red;"><%=request.getParameter("errorMsg")%></div>
										<%
											}
										%>


										<!-- <button type="submit" class="btn btn-primary mt-15">Reset</button>
                                <button type="submit" class="btn btn-primary mt-15">Register</button> -->
										<c:choose>
											<c:when test="${edit}">
												<input class="btn btn-primary btn-round" type="submit"
													value="Update" formaction="/easypguser/user/updateUser" />
												<input value="Cancel" class="btn btn-primary btn-round"
													type="submit" formaction="/easypguser/user/home">

											</c:when>
											<c:otherwise>
												<input class="btn btn-primary btn-round" type="submit"
													value="Register" formaction="/easypguser/user/addUser" />
												<input value="Cancel" class="btn btn-primary btn-round"
													type="submit" formaction="/easypguser/user/login">

											</c:otherwise>
										</c:choose>

										<a class="text-secondary hover-text-primary d-block mt-4"
											href="/easypguser/user/terms">View Terms and Conditions</a>
										<a class="text-secondary hover-text-primary d-block mt-4"
											href="/easypguser/user/login">Already have an Account? Login</a>
								</form:form>
							</div>
						</div>
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
	<script type="text/javascript">
		$("#stateId")
				.change(
						function() {
							var stateId = $(this).val();
							//alert("stateId : "+stateId);
							$
									.ajax({
										type : 'GET',
										url : "/easypguser/area/getCities/"
												+ stateId,
										success : function(data) {

											var slctSubcat = $('#cityId'), option = "";
											slctSubcat.empty();
											var select = "<option value='0'> --- Select city ---</option>";

											for (var i = 0; i < data.length; i++) {
												option = option
														+ "<option value='"+data[i].city_id + "'>"
														+ data[i].name
														+ "</option>";
											}
											slctSubcat.append(select);
											slctSubcat.append(option);
										},
										error : function() {
											alert("error");
										}
									});
						});
	</script>
	<script type="text/javascript">
		$("#cityId")
				.change(
						function() {
							var cityId = $(this).val();

							$
									.ajax({
										type : 'GET',
										url : "/easypguser/area/getAreas/"
												+ cityId,
										success : function(data) {

											var slctSubcat = $('#areaId'), option = "";
											slctSubcat.empty();
											var select = "<option value='0'> --- Select area ---</option>";

											for (var i = 0; i < data.length; i++) {
												option = option
														+ "<option value='"+data[i].areaId + "'>"
														+ data[i].name
														+ "</option>";
											}
											slctSubcat.append(select);
											slctSubcat.append(option);
										},
										error : function() {
											alert("error");
										}
									});
						});
	</script>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script language="javascript" type="text/javascript">
		$(function() {
			$("#profilePicture")
					.change(
							function() {
								if (typeof (FileReader) != "undefined") {
									var dvPreview = $("#dvPreview");
									dvPreview.html("");
									var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
									$($(this)[0].files)
											.each(
													function() {
														var file = $(this);
														if (regex
																.test(file[0].name
																		.toLowerCase())) {
															var reader = new FileReader();
															reader.onload = function(
																	e) {
																var img = $("<img />");
																img
																		.attr(
																				"style",
																				"height:100px;width: 100px");
																img
																		.attr(
																				"src",
																				e.target.result);
																dvPreview
																		.append(img);
															}
															reader
																	.readAsDataURL(file[0]);
														} else {
															alert(file[0].name
																	+ " is not a valid image file.");
															dvPreview.html("");
															return false;
														}
													});
								} else {
									alert("This browser does not support HTML5 FileReader.");
								}
							});
		});
	</script>

</body>
</html>
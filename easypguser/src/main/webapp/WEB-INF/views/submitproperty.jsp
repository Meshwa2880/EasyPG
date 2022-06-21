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
							<h3 class="page-name float-left text-secondary mt-1 mb-0">
								<c:choose>
									<c:when test="${edit}">
												Edit Property
											</c:when>
									<c:otherwise>
												Submit Property
											</c:otherwise>
								</c:choose>
							</h3>
						</div>
						<div class="col-md-6">
							<nav aria-label="breadcrumb" class="float-left float-md-right">
								<ol class="breadcrumb bg-transparent m-0 p-0">
									<li class="breadcrumb-item"><a
										href="/easypguser/user/home">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page"><c:choose>
											<c:when test="${edit}">
												Edit Property
											</c:when>
											<c:otherwise>
												Submit Property
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
						<div class="col-md-12">
							<div class="submit-form">
								<c:choose>
									<c:when test="${edit}">
												Edit Property
											</c:when>
									<c:otherwise>
												Submit Property
											</c:otherwise>
								</c:choose>
								<form:form method="post" modelAttribute="property"
									enctype="multipart/form-data">

									<div class="description">
										<h5 class="text-secondary">Basic Information</h5>
										<hr>
										<form:input type="hidden" name="userId" path="userId"
											id="userId" class="form-control" />

										<form:input type="hidden" name="propertyId" path="propertyId"
											id="propertyId" class="form-control" />

										<div class="row">
											<div class="col-lg-12 col-md-12">
												<div class="form-group">
													<label>Property Title</label> <span class="ml-2 fa-2x"><i
														title="Property Title"
														class="fas fa-question-circle text-secondary"></i></span>
													<form:input type="text" name="title" path="title"
														class="form-control" required="true"/>
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label>Property Status</label>
													<form:select class="form-control" name="status"
														path="status">
														<form:option value="0" disabled="true" selected="selected">Select Status</form:option>
														<form:option value="vacant">Vacant</form:option>
														<form:option value="Occupied">Occupied</form:option>
													</form:select>

												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label>Property Types</label>
													<form:select class="form-control" name="type" path="type">
														<form:option value="0" disabled="true" selected="selected">Select Type</form:option>
														<form:option value="bed">Bed</form:option>
														<form:option value="room">Room</form:option>
														<form:option value="appartment">Appartment</form:option>
													</form:select>
												</div>
											</div>
											<div class="col-lg-4 col-md-12">
												<div class="form-group">
													<label>Price</label> <span class="ml-2 fa-2x"><i
														title="Property Price"
														class="fas fa-question-circle text-secondary"></i></span>
													<form:input type="text" placeholder="INR"
														class="form-control" name="rent" path="rent" pattern="[1-9]{1,}" title="Enter Only Numbers" />

												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label>Only For</label>
													<form:select class="form-control" name="onlyfor"
														path="onlyfor">
														<form:option value="0" disabled="true" selected="selected">Select Type</form:option>
														<form:option value="boys">Boys</form:option>
														<form:option value="girls">Girls</form:option>

													</form:select>
												</div>
											</div>

											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label>Furnished</label>
													<form:select class="form-control" name="furnished"
														path="furnished">
														<form:option value="0" disabled="true" selected="selected">Select Type</form:option>
														<form:option value="furnished">Fully Furnished</form:option>
														<form:option value="semi-furnished">Semi-Furnished</form:option>
														<form:option value="unfurnished">Unfurnished</form:option>
													</form:select>
												</div>
											</div>
											<div class="col-lg-4 col-md-12">
												<div class="form-group">
													<label>Bed Rooms</label> <span class="ml-2 fa-2x"><i
														title="Property Price"
														class="fas fa-question-circle text-secondary"></i></span>
													<form:input type="text" name="rooms" path="rooms"
														class="form-control position-relative" pattern="[1-9]{1,}" title="Enter Only Numbers" required="true" />
												</div>
											</div>
											<div class="col-lg-4 col-md-12">
												<div class="form-group">
													<label>Beds</label> <span class="ml-2 fa-2x"><i
														title="Property Price"
														class="fas fa-question-circle text-secondary"></i></span>
													<form:input type="text" name="beds" path="beds"
														class="form-control position-relative" pattern="[1-9]{1,}" title="Enter Only Numbers" required="true" />
												</div>
											</div>
											<div class="col-lg-4 col-md-12">
												<div class="form-group">
													<label>BathRooms</label> <span class="ml-2 fa-2x"><i
														title="Property Price"
														class="fas fa-question-circle text-secondary"></i></span>
													<form:input type="text" name="baths" path="baths"
														placeholder="1" class="form-control position-relative" pattern="[1-9]{1,}" title="Enter Only Numbers" required="true"/>
												</div>
											</div>


											<div class="col-lg-3"></div>
										</div>
									</div>
									<div class="description mt-4">
										<h5 class="text-secondary">Description</h5>
										<hr>
										<div class="row">
											<div class="col-lg-12 col-md-12">
												<div class="form-group">
													<label>Description</label>
													<form:textarea name="propertyDesc" path="propertyDesc"
														class="form-control bg-gray"
														placeholder="Write Details..." rows="8" pattern=".{1,}" title="Describe the property and its surroundings" required="true"></form:textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="property-location mt-4">
										<h5 class="text-secondary">Property Location</h5>
										<hr>
										<div class="row">
											<div class="col-lg-6 col-md-6">
												<div class="form-group">
													<label>Address</label>
													<form:textarea name="address" path="address"
														class="form-control" required="true"></form:textarea>
												</div>
											</div>
											<div class="col-lg-6 col-md-6">
												<div class="form-group">
													<label>State</label>
													<form:select class="form-control" name="stateId"
														path="stateId" id="stateId">
														<form:option value="0" disabled="true">Choose State</form:option>
														<c:forEach var="s" items="${liststate}">
															<form:option value="${s.stateId}" label="${s.name}" />
														</c:forEach>

													</form:select>
												</div>
											</div>

											<div class="col-lg-6 col-md-6">
												<div class="form-group">
													<label>City</label>
													<form:select class="form-control" name="city_id"
														path="city_id" id="cityId">
														<form:option value="0" disabled="true">Choose City</form:option>
														<c:forEach var="c" items="${listcity}">
															<form:option value="${c.city_id}" label="${c.name}" />
														</c:forEach>
													</form:select>
												</div>
											</div>
											<div class="col-lg-4 col-md-4">
												<div class="form-group">
													<label>Area</label>
													<form:select class="form-control" name="areaId"
														path="areaId" id="areaId">
														<form:option value="0" disabled="true">Choose Area</form:option>
														<c:forEach var="a" items="${listarea}">
															<form:option value="${a.areaId}" label="${a.name}" />
														</c:forEach>

													</form:select>
												</div>
											</div>
											<div class="col-lg-4 col-md-4">
												<div class="form-group">
													<label>Zip Code</label>
													<form:input type="number" name="pincode" path="pincode"
														class="form-control" pattern="[1-9]{6}" title="Enter Valid Pin Code eg-380015" required="true"/>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="upload-media mt-5">
			<h5 class="text-secondary">Add Photos</h5>
			<hr>
			<div class="row">
				<div class="col-md-12">
					<div class="browse-submit">
						<c:choose>
										<c:when test="${edit}">
											<div>
											<c:forTokens var="token" items="${property.propertyPicture}" delims="|">
												<div id="dvPreview">
													<img alt=""
														src="/easypguser/resources/images/propertyPicture/${token}"
														style="height: 100px; width: 100px">
												</div>
												</c:forTokens>
												<input type="file" id="propertyPicture" name="propertyPicture" path="propertyPicture"
													value="D:/Jva_tools/apache-tomcat-9.0.22/webapps/easypguser/resources/images/propertyPicture/${property.propertyPicture}" multiple/>
												<hr />
												<br />

											</div>

										</c:when>
										<c:otherwise>
											<div>
												<div id="dvPreview"></div>
												<input type="file" id="propertyPicture" name="propertyPicture"
													path="propertyPicture" multiple />
												<hr />
												<br />

											</div>

										</c:otherwise>
									</c:choose>
						

					</div>
				</div>
				<div class="col-lg-12">

					<c:choose>
						<c:when test="${edit}">
							<input class="btn btn-primary btn-round" type="submit"
								value="Update" formaction="/easypguser/property/updateProperty" />
						</c:when>
						<c:otherwise>
							<input class="btn btn-primary btn-round" type="submit"
								value="Submit" formaction="/easypguser/property/addProperty" />
						</c:otherwise>
					</c:choose>
					</form:form>
				
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
							//alert("cityId : "+cityId);
							$
									.ajax({
										type : 'GET',
										url : "/easypguser/area/getAreas/"
												+ cityId,
										success : function(data) {

											var slctSubcat = $('#areaId'), option = "";
											slctSubcat.empty();

											for (var i = 0; i < data.length; i++) {
												option = option
														+ "<option value='"+data[i].areaId + "'>"
														+ data[i].name
														+ "</option>";
											}
											slctSubcat.append(option);
										},
										error : function() {
											alert("error");
										}
									});
						});
	</script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
$(function () {
    $("#propertyPicture").change(function () {
        if (typeof (FileReader) != "undefined") {
            var dvPreview = $("#dvPreview");
            dvPreview.html("");
            var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
            $($(this)[0].files).each(function () {
                var file = $(this);
                if (regex.test(file[0].name.toLowerCase())) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var img = $("<img />");
                        img.attr("style", "height:100px;width: 100px");
                        //img.attr("style", "float:right");
                        img.attr("src", e.target.result);
                        dvPreview.append(img);
                    }
                    reader.readAsDataURL(file[0]);
                } else {
                    alert(file[0].name + " is not a valid image file.");
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
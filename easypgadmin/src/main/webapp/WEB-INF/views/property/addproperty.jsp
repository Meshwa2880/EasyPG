<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="../head.jsp" %>
</head>
<body>
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

<div class="wrapper">
<%@include file = "../sidebar.jsp" %>
	<div class="main-panel">
		<%@include file = "../header.jsp" %>
	<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">perm_identity</i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">
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
                            >
                                <div class="description">
                                    <h5 class="text-secondary">Basic Information</h5>
                                    <hr>
                            <form:input type="hidden" name="propertyId" path="propertyId"
											id="propertyId" class="form-control" />
										
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <div class="form-group">
                                                <label>Property Title</label>
                                                <span class="ml-2 fa-2x"><i title="Property Title" class="fas fa-question-circle text-secondary"></i></span>
                                                <form:input type="text" name="title" path="title" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Property Status</label>
                                                <form:select class="form-control" name="status"
														path="status">
														<form:option value="select status">Select Status</form:option>
														<form:option value="vacant">Vacant</form:option>
														<form:option value="Occupied">Occupied</form:option>
													</form:select>
												
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Property Types</label>
                                                <form:select class="form-control" name="type" path="type">
														<form:option value="select Type">Select Type</form:option>
														<form:option value="bed">Bed</form:option>
														<form:option value="room">Room</form:option>
														<form:option value="appartment">Appartment</form:option>
													</form:select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                                <label>Price</label>
                                                <span class="ml-2 fa-2x"><i title="Property Price" class="fas fa-question-circle text-secondary"></i></span>
                                                <form:input type="text" placeholder="INR"
														class="form-control" name="rent" path="rent" />
												
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label>Only For</label>
													<form:select class="form-control" name="onlyfor"
														path="onlyfor">
														<form:option value="select type">Select Type</form:option>
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
														<form:option value="select type">Select Type</form:option>
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
														placeholder="1" class="form-control position-relative" />
												</div>
											</div>
											<div class="col-lg-3"> </div>
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
													class="form-control bg-gray" placeholder="Write Details..."
													rows="8"></form:textarea>
											
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
												class="form-control"></form:textarea>
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="form-group">
											<label>City</label>
											<form:select class="form-control" name="city" path="city">
												<form:option value="city">Select City</form:option>
												<form:option value="c1">Status 1</form:option>
												<form:option value="c2">Status 2</form:option>
												<form:option value="c3">Status 3</form:option>
											</form:select>
										</div>
									</div>
									<div class="col-lg-4 col-md-4">
										<div class="form-group">
											<label>Area</label>
											<form:select class="form-control" name="areaId" path="areaId">
												
												<form:option value="1">Status 1</form:option>
												<form:option value="2">Status 2</form:option>
												<form:option value="3">Status 3</form:option>
											</form:select>
										</div>
									</div>
									<div class="col-lg-4 col-md-4">
										<div class="form-group">
											<label>Zip Code</label>
											<form:input type="number" name="pincode" path="pincode"
												class="form-control" />
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
		<h5 class="text-secondary">Add Photos and Videos</h5>
            <hr>
			<div class="row">
									<div class="col-md-12">
										<div class="browse-submit">
												<%-- <c:choose>
												<c:when test="${edit}">
													<img
													src="/easypguser/resources/propertyPicture/${property.propertyPicture}"
													class="picture-src" id="wizardPicturePreview" title="" />
												</c:when>
												<c:otherwise>
															<img
																src="/easypguser/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png"
																class="picture-src" id="wizardPicturePreview" title="" />
																</c:otherwise>	
										</c:choose> --%>
										
														<div>
															
																	 <input type="file" id="propertyImage" name="propertyImage" path="propertyImage" />
																
														</div>
													</div>
										</div>
									</div>
								     <div class="col-lg-12">
                    
                      
											<div class="footer text-center">
											<c:choose>
												<c:when test="${edit}">
													<input class="btn btn-primary btn-round" type="submit"
														value="Update" formaction="/easypgadmin/property/updateProperty" />
												</c:when>
												<c:otherwise>
													<input class="btn btn-primary btn-round" type="submit"
														value="Register" formaction="/easypgadmin/property/addProperty" />
												</c:otherwise>
											</c:choose>
											<input class="btn btn-primary btn-round" type="submit"
												value="Back" formaction="/easypgadmin/property/prpertyList" />
				</form:form>
                   
    <%@include file="../footer.jsp" %>
    </div>
    </div>
</body>
<!--   Core JS Files   -->
	<%@include file = "../corejsfiles.jsp" %>
</html>
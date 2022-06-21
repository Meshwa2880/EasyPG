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
				<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/easypgadmin/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/sidebar-1.jpg">
    <div class="logo">
        <a  class="simple-text logo-mini">
             PG
        </a>

        <a  class="simple-text logo-normal">
             Easy-PG 
        </a>
    </div>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="/easypgadmin/resources/sample-profile-picture.png"/>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                     	 Meshwa Patel
                          <b class="caret"></b>
                    </span>
                </a>
                <div class="clearfix"></div>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                       
                        <li>
                            <a href="/easypgadmin/admin/editAdmin/${admin.adminId}">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/admin/adminRegistrationPage">
                                <span class="sidebar-mini"> AA </span>
                                <span class="sidebar-normal"> Add Admin </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/admin/changePassword">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/admin/adminList">
                                <span class="sidebar-mini"> AL</span>
                                <span class="sidebar-normal"> Admin List </span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="/easypgadmin/admin/login">
                                <span class="sidebar-mini"> LO </span>
                                <span class="sidebar-normal"> Logout </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">

            <li>
                <a href="/easypgadmin/user/userList">
                    <i class="material-icons">settings_applications</i>
                    <p>Manage Users</p>
                </a>
                </li>

            <li>
                <a data-toggle="collapse" href="#componentsExamples">
                    <i class="material-icons">location_on</i>
                    <p> Manage Location 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="componentsExamples">
                    <ul class="nav">
                        <li>
                            <a href="/easypgadmin/area/areaList">
                                <span class="sidebar-mini"> A </span>
                                <span class="sidebar-normal"> Area </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/city/cityList">
                                <span class="sidebar-mini"> C </span>
                                <span class="sidebar-normal"> City </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            <!-- <!-- <li>
                <a data-toggle="collapse" href="#formsExamples">
                    <i class="material-icons">burst_mode</i>
                    <p> Manage Pages 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="formsExamples">
                    <ul class="nav">
                        <li>
                            <a href="/easypgadmin/pages/others/aboutus.jsp">
                                <span class="sidebar-mini"> A </span>
                                <span class="sidebar-normal"> About Us </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/pages/others/contactus.jsp">
                                <span class="sidebar-mini"> C </span>
                                <span class="sidebar-normal"> Contact Us </span>
                            </a>
                        </li>
                        <li>
 -->                   <!--          <a href="/easypgadmin/faq.jsp">
                                <span class="sidebar-mini"> F </span>
                                <span class="sidebar-normal"> FAQ </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li> -->
 
            <li>
                <a data-toggle="collapse" href="#tablesExamples">
                    <i class="material-icons">house</i>
                    <p> Manage Property 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="tablesExamples">
                    <ul class="nav">
                        <li>
                            <a href="/easypgadmin/property/propertyList">
                                <span class="sidebar-mini"> L </span>
                                <span class="sidebar-normal"> Listed Properties </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/booking/bookingList">
                                <span class="sidebar-mini"> B </span>
                                <span class="sidebar-normal"> Booked Properties </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/freevisit/freevisitList">
                                <span class="sidebar-mini"> V </span>
                                <span class="sidebar-normal"> Free Visit </span>
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </li>

            <li>
                <a href="/easypgadmin/review/reviewList">
                    <i class="material-icons">sms</i>
                    <p> Reviews </p>
                </a>
            </li>
            
            <li>
                <a href="/easypgadmin/feedback/feedbackList">
                    <i class="material-icons">comment</i>
                    <p> Comments </p>
                </a>
            </li>
            
           <!--  <li>
                <a href="/easypgadmin/pages/others/payment.jsp">
                    <i class="material-icons">money</i>
                    <p> Payments </p>
                </a>
            </li>
            
			<li>
                <a href="/easypgadmin/pages/others/socialmedia.jsp">
                    <i class="material-icons">share</i>
                    <p> Social Media Accounts </p>
                </a>
            </li>
             
            <li>
                <a href="/easypgadmin/admin/home">
                    <i class="material-icons">apps</i>
                    <p> Generate Report </p>
                </a>
            </li>-->
            
        </ul>
    </div>
</div>
		<div class="main-panel">
			<%@include file="../header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<form:form class="form" method="post" modelAttribute="admin"
									enctype="multipart/form-data">
									<form:input type="hidden" path="adminId" name="adminId" />
									<div class="card-content">
										<div class="card-header card-header-icon"
											data-background-color="rose">
											<i class="material-icons">perm_identity</i>
										</div>
										<div class="card-content">
											<h4 class="card-title">
												<c:choose>
													<c:when test="${edit}">
												Edit Admin Details
											</c:when>
													<c:otherwise>
												Register New Admin
											</c:otherwise>
												</c:choose>
												<small class="category"></small>
											</h4>

											<div class="row" style="margin-left: 340px">
												<div class="col-md-2 col-md-offset-1">
													<div class="fileinput fileinput-new text-center"
														data-provides="fileinput"
														style="margin-top: -10px; margin-left: 0%">
														<div class="fileinput-new thumbnail img-circle">
															<c:choose>
																<c:when test="${edit}">
																	<img
																		src="/easypgadmin/resources/images/profilePicture/${admin.profilePicture}"
																		class="picture-src" id="wizardPicturePreview" title="" />
																</c:when>
																<c:otherwise>
																	<img
																		src="/easypgadmin/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png"
																		class="picture-src" id="wizardPicturePreview" title="" />
																</c:otherwise>
															</c:choose>
														</div>
														<div
															class="fileinput-preview fileinput-exists thumbnail img-circle"
															style=""></div>
														<div>
															<span class="btn btn-round btn-rose btn-file"> <span
																class="fileinput-new">Choose Photo</span> <span
																class="fileinput-exists">Change</span> <form:input
																	type="hidden" path="adminId" /> <form:input
																	type="hidden" path="password" />
																	 <input type="file"
																id="profileImage" name="profileImage"
																path="profileImage" /></span> <br> <a href="#pablo"
																class="btn btn-danger btn-round fileinput-exists"
																data-dismiss="fileinput"><i class="fa fa-times"></i>
																Remove</a>
														</div>
													</div>
												</div>
											</div>
										
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">face</i>
												</span>
												<form:input type="text" class="form-control"
													placeholder="First Name..." path="fname" name="fname" />
											</div>
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">person</i>
												</span>
												<form:input type="text" class="form-control"
													placeholder="Last Name..." path="lname" name="lname" />
											</div>

											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">email</i>
												</span>
												<form:input type="text" class="form-control"
													placeholder="Email..." path="email" name="email" />
											</div>



											<!-- If you want to add a checkbox to this form, uncomment this code -->

											<div class="checkbox">
												<label> <%--  <form:checkbox
													name="optionsCheckboxes" path="terms"/> I agree to the <a
													href="#something">terms and conditions</a>. --%>
												</label>
											</div>
										</div>
										<div class="footer text-center">
											<c:choose>
												<c:when test="${edit}">
													<input class="btn btn-primary btn-round" type="submit"
														value="Update" formaction="/easypgadmin/admin/updateAdmin" />
												</c:when>
												<c:otherwise>
													<input class="btn btn-primary btn-round" type="submit"
														value="Register" formaction="/easypgadmin/admin/addAdmin" />
												</c:otherwise>
											</c:choose>
											<input class="btn btn-primary btn-round" type="submit"
												value="Back" formaction="/easypgadmin/admin/adminList" />
										</div>
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
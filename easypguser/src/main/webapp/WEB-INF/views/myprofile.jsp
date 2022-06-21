<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body>
	<div id="page-wrapper">
    	<div class="row">
    		<%@include file="header.jsp" %>
    		
<!--	Page Loader
=============================================================-->
<div class="page-loader position-fixed z-index-9999 w-100 bg-white vh-100">
	<div class="d-flex justify-content-center y-middle position-relative">
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Register</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">myprofile</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
                    <div class="col-md-5">
                        <div class="mt-sm-50">
                            <a class="down-active text-secondary">My Profile</a>
                             
                            <form:form class="mt-5 icon-form" method="post" action="/easypguser/user/editProfile" modelAttribute="view" 
                            enctype="multipart/form-data">
                           			<%-- <c:choose>
												<c:when test="${edit}">
													<img
													src="/easypgadmin/resources/images/userProfile/${user.profilePicture}"
													class="picture-src" id="wizardPicturePreview" title="" />
												</c:when>
												<c:otherwise>
															<img
																src="/easypgadmin/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png"
																class="picture-src" id="wizardPicturePreview" title="" />
																</c:otherwise>	
										</c:choose>
											<div
													class="fileinput-preview fileinput-exists thumbnail img-circle"
													style=""></div>
												<div>
													<span class="btn btn-round btn-rose btn-file"> <span
														class="fileinput-new">Add Photo</span> <span
														class="fileinput-exists">Change</span> <form:input
															type="hidden" path="UserId" /> <form:input type="hidden"
															path="password" /> <form:input type="file"
															path="profileImage" name="profileImage" id="profileImage" /></span> <br>
													<a href="#pablo"
														class="btn btn-danger btn-round fileinput-exists"
														data-dismiss="fileinput"><i class="fa fa-times"></i>
														Remove</a>
												</div>
											
                                --%> 
                                <form:input type="hidden" name="UserId" path="UserId" /> 
                                <form:input type="hidden" name="password" path="password" />
                                <div class="form-group user">
                                    <label>First Name</label>
                                    <form:input type="text" class="form-control bg-gray" placeholder="" name="fname" path="fname" pattern="[A-Za-z]{1,}" 
											title="First Name should only conatins alphabets" required="true"/>
                                </div>
                                
                                <div class="form-group user">
                                    <label>Last Name</label>
                                    <form:input type="text" class="form-control bg-gray" placeholder="" name="lname" path="lname" pattern="[A-Za-z]{1,}" 
											title="Last Name should only conatins alphabets" required="true"/>
                                </div>
                                
								<div class="form-group phone">
                                    <label>Mobile Number</label>
                                    <form:input type="text" class="form-control bg-gray" placeholder="" name="mobileNo" path="mobileNo" pattern="[0-9]{10}" title="Enter Valid Mobile Number" required="true"/>
                                </div>
                                
                                <div class="form-group calender">
									<label>Date Of Birth</label>
									<br>
									<form:input type="date"  class="form-control bg-gray" name="dob" path="dob" required="true"/>
								</div>
								
							 <div class="form-group">
                                    <label>Gender</label><br>
                                    <form:radiobutton  style="display:''" name="gender" value="male" path="gender"/> Male &nbsp &nbsp &nbsp
									<form:radiobutton  id="male" style="display:''" name="gender" value="male" path="gender"/> Female &nbsp &nbsp &nbsp
									<form:radiobutton  id="female" name="gender" value="female" path="gender" /> Other<br>
                                </div>
							 <div class="form-group address">
                                    <label>Residential Address</label>
                                    <form:input type="text" class="form-control bg-gray" placeholder="" name="address" path="address"/>
                                </div>
								  <div class="form-group">
                                                <label>Area</label>
                                                <form:select class="form-control bg-gray" path="area" name="area">
                                                    <form:option value="select">Select Area</form:option>
                                                    <form:option value="a1">Status 1</form:option>
                                                    <form:option value="a2">Status 2</form:option>
                                                    <form:option value="a3">Status 3</form:option>
                                                </form:select>
                                   </div>
                                   <div class="form-group">
                                                <label>City</label>
                                                <form:select class="form-control bg-gray" path="city" name="city">
                                                    <form:option value="select">Select City</form:option>
                                                    <form:option value="c1">Status 1</form:option>
                                                    <form:option value="c2">Status 2</form:option>
                                                    <form:option value="c3">Status 3</form:option>
                                                </form:select>
                                 </div>
								   <div class="form-group zip">
                                                <label>Zip Code</label>
                                       <form:input type="text" name="pincode" path="pincode" class="form-control bg-gray" pattern="[1-9]{6}" title="Enter Valid Pin Code eg-380015" required="true"/>
                                   </div>
                                <div class="form-group email">
                                    <label for="exampleInputEmail2">Email address</label>
                                    <form:input id="exampleInputEmail2" type="email" name="email" path="email" class="form-control bg-gray" placeholder=""/>
                                </div>
                                <c:choose>
									<c:when test="${edit}">
										<form:input type="hidden" path="password" id="password"/>
									</c:when>
								
								<c:otherwise>
                                <div class="form-group password">
                                    <label for="exampleInputPassword1">Password</label>
                                    <form:input id="exampleInputPassword1" name="password" path="password" type="password" class="form-control bg-gray" placeholder=""/>
                                </div>
                                <div class="form-group password">
                                    <label for="exampleInputPassword2">Re-enter Password</label>
                                    <form:input id="exampleInputPassword2" name="cpassword" path="cpassword" type="password" class="form-control bg-gray" placeholder=""/>
                                </div>
                                </c:otherwise>
                                </c:choose>
                                <div class="text-center">
									<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
								
                                <%-- <div class="form-group form-check">
                                    <form:input type="checkbox" class="form-check-input" id="exampleCheck1" path="term" name="term"/>
                                    <label class="form-check-label" for="exampleCheck1">Accept Terms and Condition</label>
                                </div>
								 --%><!-- <button type="submit" class="btn btn-primary mt-15">Reset</button>
                                <button type="submit" class="btn btn-primary mt-15">Register</button> -->
                              
												<input class="btn btn-primary btn-round" type="submit"
													value="Edit" formaction="/easypguser/user/editProfile" />
												<input class="btn btn-primary btn-round" type="submit"
													value="Delete" formaction="/easypguser/user/deleteUser" />
											
										
                                <a  class="text-secondary hover-text-primary d-block mt-4" href="#">View Terms and Conditions</a>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>                                        
       </div>
</div>
    	<%@include file="footer.jsp" %>
    	
    	<!-- Scroll to top --> 
        <a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a> 
        <!-- End Scroll To top --> 
    	
    	
   <%@include file="script.jsp" %> 
</body>
</html>
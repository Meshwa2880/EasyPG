<%@page import="com.easypguser.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.easypguser.*"%>

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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Property Single</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item"><a href="/easypguser/property/propertyGrid">Property</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Property Single</li>
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
                        <div class="row">
                            <div class="col-md-12"> 
                                <!-- Slider HTML markup -->
                              
                                <div id="single-property-2" style="width:1020px; height:640px; margin:30px auto 120px;"> 
                                    
                                    <!-- Slide 1-->
                                   <!--  <div class="ls-slide" data-ls="duration:4000; kenburnsscale:1.2;"> <img width="1920" height="1080" src="/easypguser/resources/images/slider/01.jpg" class="ls-bg" alt="" /> </div> -->
                                    
                                    <!-- Slide 2-->
                                    <c:forTokens var="token" items="${property.propertyPicture}" delims="|">
            <br>
        							<%-- hello1 ${token}
        							hello2 <c:ou ${token} --%>
                                    <div class="ls-slide" data-ls="duration:4000;"> <img width="1920" height="1080" src="/easypguser/resources/images/propertyPicture/${token}" class="ls-bg" alt="" /> </div>
                                    </c:forTokens>
                                    <!-- Slide 3-->
                                   <!--  <div class="ls-slide" data-ls="duration:4000;"> <img width="1920" height="1080" src="/easypguser/resources/images/slider/03.jpg" class="ls-bg" alt="" /> </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col-md-6">
                                <a class="btn btn-primary mt-3" href="/easypguser/booking/confirmBooking/${property.propertyId}">Book Now</a>
                                <a class="btn btn-primary mt-3" href="/easypguser/freevisit/confirmFreeVisit/${property.propertyId}" style="margin-left:20px">Book Free Visit</a>
                                <h5 class="mt-2 text-secondary">${property.title}</h5>
                                <span class="mb-sm-20 d-block"><i class="fas fa-map-marker-alt text-primary font-12"></i> ${property.address}</span> </div>
                            <div class="col-md-6"> 
                                <div class="text-primary text-left h5 my-2 text-md-right">Rs. ${property.rent} Per Month</div>
                                <div class="text-left text-md-right">Fixed Amount</div>
                            
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="property-details">
                                    <div class="bg-gray property-quantity px-4 pt-4 w-100">
                                        <ul>
                                        
                                            <li><span class="text-secondary">${property.beds}</span> Beds</li>
                                            <li><span class="text-secondary">${property.rooms}</span> Rooms</li>
                                            <li><span class="text-secondary">${property.baths}</span> Baths</li>
                                           
                                        </ul>
                                    </div>
                                    <h4 class="text-secondary my-4">Description</h4>
                                    <p>${property.propertyDesc}</p>
                                    
                                    <h5 class="mt-5 mb-4 text-secondary">Property Summary</h5>
                                    <div  class="table-striped font-14 overflow-x-scroll pb-2">
                                        <table class="w-100">
                                            <tbody>
                                                <tr>
                                                	<td>Payment Way:</td>
                                                    <td>Cash</td>
                                               
                                                    <td>Status:</td>
                                                    <td>${property.status}</td>
                                                </tr>
                                                <tr>
                                                    <td>Property Type:</td>
                                                    <td>${property.type}</td>
                                                    <td>Current Owner :</td>
                                                    <td>${property.lname}</td>
                                                </tr>
                                                <tr>
                                                    <td>Only For:</td>
                                                    <td>${property.onlyfor}</td>
                                                    <td>Furnished:</td>
                                                    <td>${property.furnished}</td>
                                                    
                                                     </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    
                                   	<h5 class="mt-5 mb-4 text-secondary">Property Location</h5>
									<h6>Address</h6>
									<P>${property.address} <br> 
									State: ${property.sname} <br>  
									City: ${property.cname}  <br>
									Area: ${property.aname}  <br>
									Pincode :${property.pincode}</P>
									
						<h5 class="mt-5 mb-4 text-secondary">User Reviews</h5>
						
								<ul class="post-comments">
								 <c:forEach items="${reviewList}" var="review">
									<li class="py-4">
										<div class="avata">
											<img src="/easypguser/resources/images/profilePicture/${review.userProfilePicture}"
												alt="">
										</div>
										<div class="comment-detail">
											<div class="d-inline-block mb-3">
												<h5 class="text-secondary">${review.userName}</h5>

										</div>	
										<div class="float-right">
												<span class="mr-4 text-ordinary">${review.reviewDate}</span>
										</div>
										<p>${review.reviewDesc}</p>
										
									</div>
									</li>
									</c:forEach>
									</ul>
									</div>
								
							</div>
                                <div class="col-lg-4" height="100%">
                                <h4
								class="double-down-line-left text-secondary position-relative pb-4 my-4">Landlord Details</h4>
							<div class="mt-4 p-4 shadow-one">
								<div class="img-80 float-left mr-3 mb-4 rounded-circle">
									<img src="/easypguser/resources/images/profilePicture/${property.userProfilePicture}"
										alt="" width="20%">
								</div>
								<h6 class="mt-4 text-primary">${property.lname}</h6>
								<span>${property.mno}</span><br> <span>${property.lemail}</span>

							</div>
							<h4
								class="double-down-line-left text-secondary position-relative pb-4 my-4">Give
								Your Review</h4>
							<div class="mt-4 p-4 shadow-one">
								<!-- <div class="img-80 float-left mr-3 mb-4 rounded-circle">
									<img src="/easypguser/resources/homex/images/user/02.jpg"
										alt="">
								</div> -->
								<h6 class="mt-2 text-primary">
									<%
										User user = (User) session.getAttribute("user");
									%>
									<%
										out.println(user.getFname());
									%>
									<%
										out.println(user.getLname());
									%>
								</h6>

								<form:form class="bg-gray-input d-inline-block"
									action="/easypguser/review/addReview/${property.propertyId}" method="post" modelAttribute="review" enctype="multipart/form-data">
									<div class="row">
										<br>
										<br>
										<div class="col-md-12">
											<div class="form-group">
											<%
									if (request.getParameter("reviewError") != null) {
								%>
								<div style="color: red; margin-left: 70px"><%=request.getParameter("reviewError")%></div>
								<%
									}
								%>
									
										<form:input type="hidden" class="form-control"
									id="inlineFormInputGroupUsername3" path="reviewId" />
								<form:input type="hidden" class="form-control"
									id="inlineFormInputGroupUsername3" path="userId" />
										
												<form:textarea class="form-control" id="reviewDesc" name="reviewDesc" path="reviewDesc"
													cols="30" rows="5" placeholder="Review"/>
											</div>
										</div>
										<div class="col-md-12">
											<button type="submit" id="send" value="submit"
												class="btn btn-primary w-100">Submit</button>
										</div>
									</div>
								</form:form>
							</div>
                              </div>  
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
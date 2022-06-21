<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.easypguser.model.City"%>
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


<!-- Color Settings -->
<div class="color-panel">
  <form:form method="post" modelAttribute="filters" action="/easypguser/property/filters">
	<div class="on-panel bg-primary"><img class="photos" src="/easypguser/resources/images/settings.png" alt=""></div>
    <div class="panel-box"> <span class="panel-title">Show Houses For</span>
			<br>
            <form:checkbox path="onlyfor" value="boys"  class="filters"/>&nbsp;Boys
			<form:checkbox path="onlyfor" value="girls"  class="filters"/>&nbsp;Girls
			
    </div>
    <div class="switcher_layout"> <span class="layout_title">Furnishing Type</span>
			<br>
           <form:checkbox path="furnished" value="furnished"  class="filters"/>&nbsp;Fully
			<form:checkbox path="furnished" value="semi-furnished"  class="filters"/>&nbsp;Semi
			<form:checkbox path="furnished" value="unfurnished"  class="filters"/>&nbsp;Unfurnished
    </div>
    <div class="box_bg_style"> <span class="layout_title">Monthly Rent</span>
			<br>
			<form:checkbox path="rentFilter" value="Below 5k"  class="filters"/>&nbsp;Below 5k
			<form:checkbox path="rentFilter" value="5k-15k"  class="filters"/>&nbsp;5k-15k<br>
			<form:checkbox path="rentFilter" value="15k-25k"  class="filters"/>&nbsp;15k-25k
			<form:checkbox path="rentFilter" value="Above 25k"  class="filters"/>&nbsp;Above 25k
    </div>
    <div class="box_bg_style"> <span class="layout_title">Cities</span>
    <form:select class="form-control bg-gray" path="city_id" name="city_id">
												<option value=0 label="Select City"/>
												<c:forEach var="c" items="${listcity}">
													<form:option value="${c.city_id}" label="${c.name}" />
												</c:forEach>
											</form:select>

    </div>
	<!-- <div class="box_bg_style"> <span class="layout_title">Number Of Rooms</span>
			<br>
			<input type="button" value="1BHK"  class="filters">
			<input type="button" value="2BHK"  class="filters">
			<input type="button" value="3+BHK"  class="filters">
    </div> -->
	<div class="box_bg_style">
			<input type="submit" value="Submit" class="filters_btn">
			<input type="reset" value="Reset"  class="filters_btn">
    </div>

</form:form>
</div>
<!-- End Color Settings -->

        
        <!--	Banner
		===============================================================-->
        <div class="bg-gray full-row py-5 page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Properties</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Properties</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	Property Grid
		===============================================================-->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row pb-4">
                            
							<div class="col-md-12">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination justify-content-center mt-4">
										<li class="page-item"> <a class="page-link" href="/easypguser/property/beds">Beds</a> </li>
                                        <li class="page-item"> <a class="page-link" href="/easypguser/property/rooms">Rooms</a> </li>
                                        <li class="page-item"> <a class="page-link" href="/easypguser/property/apartments">Houses</a> </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        </div>
                        </div>
                        
                        
                        
						 
						
                        <div class="row">
                       <c:forEach items="${property}" var="property">
                            <div class="col-md-6 col-lg-4">
                                <div class="featured-thumb hover-zoomer mb-4">
                                    <div class="overlay-black overflow-hidden position-relative"> <img width="250" height="250" src="/easypguser/resources/images/propertyPicture/${property.propertyPicture} " alt="">
                                        <div class="featured bg-primary text-white">${property.status}</div>
                                        <div class="sale bg-secondary text-white">For Rent</div>
                                        <div class="price text-primary">Rs.${property.rent}/month </div>
                                        
                                    </div>
                                    
                                    <div class="featured-thumb-data shadow-one">
                                        <div class="p-4">
                                            <h5 class="text-secondary hover-text-primary mb-2"><a href="/easypguser/property/viewProperty/${property.propertyId}">${property.title}</a></h5>
                                            <span class="location"><i class="fas fa-map-marker-alt text-primary"></i> ${property.address}</span> </div>
                                        <div class="px-4 pb-4 d-inline-block w-100">
                                            <div class="float-left"><i class="fas fa-user text-primary mr-1"></i> ${property.fname} ${property.lname}</div>
                                            <div class="float-right"><i class="far fa-calendar-alt text-primary mr-1"></i>${property.createdDate}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            </div>
                            
                            
                            <!-- 
                             <div class="col-md-12">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination justify-content-center mt-4">
                                        <li class="page-item disabled"> <span class="page-link">Previous</span> </li>
                                        <li class="page-item active" aria-current="page"> <span class="page-link"> 1 <span class="sr-only">(current)</span> </span> </li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">...</li>
                                        <li class="page-item"><a class="page-link" href="#">45</a></li>
                                        <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
                                    </ul>
                                </nav>
                            </div>  -->
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
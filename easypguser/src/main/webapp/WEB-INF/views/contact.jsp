<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Contact Us</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Contact</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	Contact Information
===============================================================-->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="contact-info">
                            <h3 class="mb-4 text-secondary">Support</h3>
                            <div class="d-flex">
                               
                                <div class="contact-details">
                                    <h5>Easy PG</h5>
                                    <span class="d-block">Support Group</span> <a class="text-primary" href="#">easypg123@gmail.com</a> </div>
                            </div>
                        </div>
                    </div>
                       <div class="col-lg-4">
                        <div class="contact-info">
                            <h3 class="mb-4 text-secondary">Contacts</h3>
                            <ul>
                                <li class="d-flex mb-4"> <i class="fas fa-map-marker-alt text-primary mr-2 font-13 mt-1"></i>
                                    <div class="contact-address">
                                        <h5 class="text-secondary">Address</h5>
                                        <span>602 Kaivana Complex, Nr Central Mall,Panchvati Ellisbridge, Ahmedabad</span> </div>
                                </li>
                                <li class="d-flex mb-4"> <i class="fas fa-phone-alt text-primary mr-2 font-13 mt-1"></i>
                                    <div class="contact-address">
                                        <h5 class="text-secondary">Call Us</h5>
                                        <span class="d-table">9016647480 (or)</span> <span>9429460081 </span> </div>
                                </li>
                                <li class="d-flex mb-4"> <i class="fas fa-envelope text-primary mr-2 font-13 mt-1"></i>
                                    <div class="contact-address">
                                        <h5 class="text-secondary">Email Adderss</h5>
                                        <span>www.praxware.com</span> </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
            </div>
        </div>
        
        
        
        <!--	Map
		===============================================================-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
						
                        
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
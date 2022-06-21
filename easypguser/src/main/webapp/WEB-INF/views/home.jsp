<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.easypguser.model.State" %>   
<%@ page import="com.easypguser.model.City" %> 
<%@ page import="com.easypguser.model.Area" %>
<%@ page import="com.easypguser.model.Property" %>
<%@ page import="com.easypguser.model.User" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body>
 <%if(session.getAttribute("user")==null)
	response.sendRedirect("error");%>

<div id="page-wrapper">
    <div class="row"> 
	<header id="header" class="transparent-header-modern fixed-header-bg-white w-100">
            <div class="top-header bg-secondary">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <ul class="top-contact list-text-white ml-3 d-table">
                                <li><a href="callto:012345678102"><i class="fas fa-phone-alt text-primary mr-1"></i>090166 47480</a></li>
                                <li><a href="mailto:office@example.com"><i class="fas fa-envelope text-primary mr-1"></i>easypg123@gmail.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="header.jsp" %>
        </header>
        
        
        
        <div class="full-row py-5 bg-gray">
            <div class="container">
                
                    <div class="row">
                     <div class="col-lg-12">
 
                          <center><label style="color:#2980B6;font-size:25px;">Hi,<% User user = (User)session.getAttribute("user"); %> 
		                         <% out.println(user.getFname()); %>  
		                         <% out.print(user.getLname()); %>
		                          <b class="caret"></b>!</label></center>
        </div>        
        <!--	Slider
        ===============================================================-->
        <div class="full-row overflow-hidden p-0">
            <div id="gastronomy-slider" style="width:1280px; height:520px; margin:0 auto; margin-bottom: 0px;"> 
                
                <!-- Slide 1-->
                <div class="ls-slide" data-ls="kenburnsscale:1.2; duration:12000;"> <img width="1920" height="960" src="/easypguser/resources/images/slider/04.jpg" class="ls-l" alt="" style="top:-339px; left:-260px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; filter:blur(10px);" data-ls="showinfo:1; durationin:1500; easingin:easeOutQuint; rotateyin:-5; scalexin:.8; scaleyin:.8; filterin:blur(30px); loop:true; loopduration:5000; loopstartat:allinend + 0; loopeasing:easeInOutSine; loopscalex:.8; loopscaley:.8; loopcount:1; loopfilter:blur(0px);">
                    <div style="top:0px; left:0px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; height:520px; width:50%; font-size:13px; opacity:.5;" class="ls-l bg-secondary" data-ls="showinfo:1; delayin:500; fadein:false; heightin:0; offsetxout:left; easingout:easeInQuint; skewxout:10;"></div>
                    <div style="top:170px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:Verdana; font-size:40px; height:2px; background:#fff; width:250px; opacity:.75; border-radius:3px;" class="ls-l" data-ls="showinfo:1; durationin:1500; delayin:1000; fadein:false; clipin:0 50% 0 50%; offsetxout:left;"></div>
                    <p style="top:140px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:'Comfortaa', cursive; font-size:30px; color:#fff;" class="ls-l" data-ls="showinfo:1; offsetyin:top; delayin:1000; easingin:easeOutQuint; offsetxout:left; texttransitionin:true; texttypein:chars-desc; textshiftin:20; textoffsetyin:-70lh; textdurationin:800; texteasingin:easeOutQuint; textfadein:false; textstartatin:transitioninstart + 0;">NO BROKERAGE</p>
                    <p style="top:190px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:20px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"><i class="fas fa-map-marker-alt text-primary"></i> SEARCH,SEE,LOVE.</p><br>
                    <p style="top:240px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:20px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"> <i class="fas fa-map-marker-alt text-primary"></i>POST,SERVE,EARN.</p><br><br>
                     <p style="top:290px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:20px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"> You can afford to Dwell Well.</p>
                     <p style="top:340px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:20px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"> Move to what moves you.</p>
                     
               </div>
                
               <!--  <!-- Slide 2-->
            <!--     <div class="ls-slide" data-ls="kenburnsscale:1.2; duration:12000;"> <img width="1920" height="960" src="images/slider/05.jpg" class="ls-l" alt="" style="top:-339px; left:-260px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; filter:blur(10px);" data-ls="showinfo:1; durationin:1500; easingin:easeOutQuint; rotateyin:-5; scalexin:.8; scaleyin:.8; filterin:blur(30px); loop:true; loopduration:5000; loopstartat:allinend + 0; loopeasing:easeInOutSine; loopscalex:.8; loopscaley:.8; loopcount:1; loopfilter:blur(0px);">
                    <div style="top:0px; left:0px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; height:520px; width:50%; font-size:13px; opacity:.5;" class="ls-l bg-secondary" data-ls="showinfo:1; delayin:500; fadein:false; heightin:0; offsetxout:left; easingout:easeInQuint; skewxout:10;"></div>
                    <div style="top:170px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:Verdana; font-size:40px; height:2px; background:#fff; width:250px; opacity:.75; border-radius:3px;" class="ls-l" data-ls="showinfo:1; durationin:1500; delayin:1000; fadein:false; clipin:0 50% 0 50%; offsetxout:left;"></div>
                    <p style="top:140px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:'Comfortaa', cursive; font-size:20px; color:#fff;" class="ls-l" data-ls="showinfo:1; offsetyin:top; delayin:1000; easingin:easeOutQuint; offsetxout:left; texttransitionin:true; texttypein:chars-desc; textshiftin:20; textoffsetyin:-70lh; textdurationin:800; texteasingin:easeOutQuint; textfadein:false; textstartatin:transitioninstart + 0;">New duplex lixury condos</p>
                    <p style="top:190px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:10px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"><i class="fas fa-map-marker-alt text-primary"></i> 1744 Daylene Drive Newport MI 48166, Australia</p>
                    <p style="top:220px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:10px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2300; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"><span class="pr-3"><i class="flaticon-select flat-mini text-primary"></i> 3500 Sqft</span><span class="pr-3"><i class="flaticon-hotel flat-mini text-primary"></i> 4 Beds</span><span class="pr-3"><i class="flaticon-bathroom flat-mini text-primary"></i> 3 Baths</span><span class="pr-3"><i class="flaticon-garage flat-mini text-primary"></i> Garage</span></p>
                    <p style="top:260px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:14px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2600; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;">$ 12500.00 / Monthly</p>
                    <div style="text-align:center; width:60px; height:25px; line-height: 25px; font-family:'Varela Round', sans-serif; font-size:10px; color:#ffffff; border-radius:3px; top:256px; left:270px;" class="ls-l bg-primary" data-ls="delayin:2800; easingin:easeOutElastic; rotateyin:-300; durationout:400; rotateyout:-400; parallaxlevel:0;">For Rent</div>
                    <a style="" class="ls-l" href="#" target="-self" data-ls="offsetyin:30; durationin:1000; delayin:2800; offsetyout:-30; durationout:400; hover:true; hoverdurationin:300; hoveropacity:1; hoverbgcolor:#ffffff; hovercolor:#444444; parallaxlevel:0;">
                    <p style="font-weight:500; text-align:center;cursor:pointer; ;padding-top:8px; padding-bottom:7px; font-family:'Varela Round', sans-serif; font-size:10px; top:310px; left:100px; border-top:1px solid #fff; border-right:1px solid #fff; padding-right:15px; border-bottom:1px solid #fff; border-left:1px solid #fff; padding-left:15px; line-height:15px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; color:#ffffff; background:rgba(0, 0, 0, 0.1); border-radius:2px; style:font-weight:500; text-align:center;cursor:pointer; ;" class=" ls-button">View Details</p>
                    </a> </div>
             -->    
         <!--        Slide 3
                <div class="ls-slide" data-ls="kenburnsscale:1.2; duration:12000;"> <img width="1920" height="960" src="images/slider/06.jpg" class="ls-l" alt="" style="top:-339px; left:-260px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; filter:blur(10px);" data-ls="showinfo:1; durationin:1500; easingin:easeOutQuint; rotateyin:-5; scalexin:.8; scaleyin:.8; filterin:blur(30px); loop:true; loopduration:5000; loopstartat:allinend + 0; loopeasing:easeInOutSine; loopscalex:.8; loopscaley:.8; loopcount:1; loopfilter:blur(0px);">
                    <div style="top:0px; left:0px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; height:520px; width:50%; font-size:13px; opacity:.5;" class="ls-l bg-secondary" data-ls="showinfo:1; delayin:500; fadein:false; heightin:0; offsetxout:left; easingout:easeInQuint; skewxout:10;"></div>
                    <div style="top:170px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:Verdana; font-size:40px; height:2px; background:#fff; width:250px; opacity:.75; border-radius:3px;" class="ls-l" data-ls="showinfo:1; durationin:1500; delayin:1000; fadein:false; clipin:0 50% 0 50%; offsetxout:left;"></div>
                    <p style="top:140px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:'Comfortaa', cursive; font-size:20px; color:#fff;" class="ls-l" data-ls="showinfo:1; offsetyin:top; delayin:1000; easingin:easeOutQuint; offsetxout:left; texttransitionin:true; texttypein:chars-desc; textshiftin:20; textoffsetyin:-70lh; textdurationin:800; texteasingin:easeOutQuint; textfadein:false; textstartatin:transitioninstart + 0;">New duplex lixury condos</p>
                    <p style="top:190px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:10px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"><i class="fas fa-map-marker-alt text-primary"></i> 1744 Daylene Drive Newport MI 48166, Australia</p>
                    <p style="top:220px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:10px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2300; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"><span class="pr-3"><i class="flaticon-select flat-mini text-primary"></i> 3500 Sqft</span><span class="pr-3"><i class="flaticon-hotel flat-mini text-primary"></i> 4 Beds</span><span class="pr-3"><i class="flaticon-bathroom flat-mini text-primary"></i> 3 Baths</span><span class="pr-3"><i class="flaticon-garage flat-mini text-primary"></i> Garage</span></p>
                    <p style="top:260px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:14px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2600; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;">$ 12500.00 / Monthly</p>
                    <div style="text-align:center; width:60px; height:25px; line-height: 25px; font-family:'Varela Round', sans-serif; font-size:10px; color:#ffffff; border-radius:3px; top:256px; left:270px;" class="ls-l bg-primary" data-ls="delayin:2800; easingin:easeOutElastic; rotateyin:-300; durationout:400; rotateyout:-400; parallaxlevel:0;">For Rent</div>
                    <a style="" class="ls-l" href="#" target="-self" data-ls="offsetyin:30; durationin:1000; delayin:2800; offsetyout:-30; durationout:400; hover:true; hoverdurationin:300; hoveropacity:1; hoverbgcolor:#ffffff; hovercolor:#444444; parallaxlevel:0;">
                    <p style="font-weight:500; text-align:center;cursor:pointer; ;padding-top:8px; padding-bottom:7px; font-family:'Varela Round', sans-serif; font-size:10px; top:310px; left:100px; border-top:1px solid #fff; border-right:1px solid #fff; padding-right:15px; border-bottom:1px solid #fff; border-left:1px solid #fff; padding-left:15px; line-height:15px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; color:#ffffff; background:rgba(0, 0, 0, 0.1); border-radius:2px; style:font-weight:500; text-align:center;cursor:pointer; ;" class=" ls-button">View Details</p>
                    </a> </div>
         -->    </div>
        </div>
        
        <!-- Property Search Form One
		=============================================================-->
                                <!-- <div class="col-md-4 col-lg-3">
                            <div class="form-group">
                                <input type="text" class="form-control" id="validationDefault03" placeholder="State" required>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3">
                            <div class="form-group">
                                <input type="text" class="form-control" id="validationDefault04" placeholder="City" required>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3">
                            <div class="form-group">
                                <input type="text" class="form-control" id="validationDefault04" placeholder="Area" required>
                            </div>
                        </div>
                         <div class="col-md-4 col-lg-3">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary w-100">Search Property</button>
                            </div>
                        </div> */
                        -->
                        
                        
        <!--	Recent Properties
        =======================================================-->
         <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-secondary double-down-line text-center">Recent Properties</h2>
                        </div>
                </div>
                <div class="row">
                   <c:forEach items="${property}" var="property">
                            <div class="col-md-6 col-lg-4">
                                <div class="featured-thumb hover-zoomer mb-4">
                                    <div class="overlay-black overflow-hidden position-relative"> <img width="250" height="250" src="/easypguser/resources/images/propertyPicture/${property.propertyPicture} " alt="">
                                        <div class="featured bg-primary text-white">New</div>
                                        <div class="sale bg-secondary text-white">For Rent</div>
                                        <div class="price text-primary">Rs.${property.rent}/month </div>
                                       
                                    </div>
                                    
                                    <div class="featured-thumb-data shadow-one">
                                        <div class="p-4">
                                            <h5 class="text-secondary hover-text-primary mb-2"><a href="/easypguser/property/viewProperty/${property.propertyId}">${property.title}</a></h5>
                                            <span class="location"><i class="fas fa-map-marker-alt text-primary"></i> ${property.address}</span> </div>
                                        <div class="px-4 pb-4 d-inline-block w-100">
                                            <div class="float-left"><i class="fas fa-user text-primary mr-1"></i> ${property.fname} ${property.lname}</div>
                                            <div class="float-right"><i class="far fa-calendar-alt text-primary mr-1"></i> ${property.createdDate}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            
                            <div class="col-md-12 col-lg-12"> <a class="btn btn-primary mt-5 d-table mx-auto" href="/easypguser/property/propertyGrid">More Properties</a> </div>
                       
            </div>
        </div>
        </div>
        
                       <!--	Achievement
        ============================================================-->
        <!-- <div class="full-row overlay-secondary" style="background-image: url('images/counterbg.jpg'); background-size: cover; background-position: center center; background-repeat: no-repeat;">
            <div class="container">
                <div class="fact-counter">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="count wow text-center  mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-house flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="1732">0</div>
                                <div class="text-white h5">Rental Properties</div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="count wow text-center  mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-man flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="341">0</div>
                                <div class="text-white h5">Happy Landlords</div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="count wow text-center  mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-invention flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="2350">0</div>
                                <div class="text-white h5">Happy Tenants</div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="count wow text-center mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-investment flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="13780">0</div>
                                <div class="text-white h5">Cities in Gujarat</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         -->
        <!--	Text Block One
		======================================================-->
        <div class="full-row bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-secondary double-down-line text-center">What We Do</h2>
                        </div>
                </div>
                <div class="text-box-one">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-rent flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Renting Service</h5>
                                <p>Post your property and get tenants and earn.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-for-rent flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Rental Service</h5>
                                <p>Easiest way to rent a home. Search home according to your requirement and move-in.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-list flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Property Listing</h5>
                                <p>Get property list and details according to your requirements.</p>
                            </div>
                        </div>
                       
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-diagram flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Zero Brokerage</h5>
                                <p>Save more when you rent with us.</p>
                            </div>
                        </div>
                        <!-- <div class="col-lg-3 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-real-estate flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0"><a href="service-details.html">E-Payment of Deposit </a></h5>
                                <p>Landlord can recieve deposit amount online.</p>
                            </div>
                        </div>
                         --><!-- <div class="col-lg-3 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-sketch flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0"><a href="service-details.html">Post Rental Services</a></h5>
                                <p>Tenant will be provided with the details of household help and other basic services. For example, plumber, electrician, maid,etc. </p>
                            </div>
                        </div>
 -->                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-seller-1 flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Guided House Visits</h5>
                                <p>Guided tour of property is provided to the interested tenants.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-list flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Filtering</h5>
                                <p>Tenant can filter the properties according to his requirements.</p>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12"> <a class="btn btn-primary mt-5 d-table mx-auto" href="services.html">More Services</a> </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <!--	Massage Box Two
        ============================================================-->
        <div class="full-row overlay-secondary" style="background-image: url('/easypguser/resources/images/massagetwo.jpg'); background-position: center center; background-repeat: no-repeat;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="text-white text-center">	MOVE TO WHAT MOVES YOU</h3>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
	<%@include file="footer.jsp" %>
	
	<a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a>

	<%@include file="script.jsp" %>
</body>
</html>
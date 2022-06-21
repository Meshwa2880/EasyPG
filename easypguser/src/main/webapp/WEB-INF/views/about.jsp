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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">About Us</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                               
                                <li class="breadcrumb-item active" aria-current="page">About</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	About Our Company
		=================================================================-->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <h3 class="double-down-line-left text-secondary position-relative pb-4 mb-4">About Our Company</h3>
                    </div>
                </div>
                <div class="row about-company">
                    <div class="col-md-12 col-lg-7">
                        <div class="about-content">
                            <p>Easy-PG is the Home Rental Network attempting to provide better rental solutions via design and technology. We help you to find, book and move into a rental home of your choice across Gujarat-all from within the app. Not just that we help you move in, ask for services from tap leakage to broken door locks, rent payments and finally move out again all within the app.We provide post rental services, add to favorites and booking free visit. The vacant houses are sorted and shown according to user requirements and ratings. We provide a platform for landlords to give their property. Anyone can operate the system at any time (24/7), thus the system will be more convenient than manual system.</p>
                          
                            <p>Easy-PG is a rental system that will provide the information about rooms/flats/houses which are available for renting. 
							This system will provide the information to find location of vacant apartment/rooms, select number of rooms and other facts by the renters. 
							It will also make easy to upload the location, expected rent, contact number, number of rooms, facilities and other information by 	landlords/room master. 
							Our application will be able to show the rooms/flats/houses within a particular area selected by the user. 
							Visitors can add to favourites and locate the property on maps. It also show amenities provided by society along with house amenities. PG can be rating a house after staying in that house. 
							Rent system will be more transparent after using this system. our application also verifies the renters and landlords by using OTP system and document verification.
							It also provides facilities to inform landlord about their experience or problems (feedback). Visitors can also book free visit of the property and also cancel it. Also for users convenient the system provides e-payment facilities. The system also provides filtering according to users requirements.
							

</p>
                            <img src="resources/images/about/02.png" alt=""> </div>
                        </div>
                    <div class="col-md-12 col-lg-5">
                        <div class="about-img"> <img src="/easypguser/resources/images/about/01.png" alt=""> </div>
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
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Services</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Services</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	Text Block One
		======================================================-->
        <div class="full-row">
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
                                <h5 class="text-secondary hover-text-primary py-3 m-0">E-Payment of Deposit</h5>
                                <p>Landlord can recieve deposit amount online.</p>
                            </div>
                        </div>
                         -->
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-seller-1 flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Guided
								House Visits</h5>
                                <p>Guided tour of property is provided to the interested tenants.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-list flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Filtering</h5>
                                <p>Tenant can filter the properties according to his requirements.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	Text Box Five
        ===============================================================-->
        <div class="full-row bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-5">
                        <h3 class="double-down-line-left text-secondary position-relative pb-4 mb-">Designed for everyone</h3>
                        <p class="pt-50">MOVE TO WHAT MOVES YOU!</p>
                        <div class="p-4 hover-bg-white hover-shadow rounded"> <i class="flaticon-budget flat-medium icon-primary float-left mr-3" aria-hidden="true"></i>
                            <div class="d-table">
                                <h5 class="text-secondary mb-3">Shared Rooms</h5>
                                <p>Rent a shared room accommodation with furnishing & fully functional kitchen for boys & girls.</p>
                            </div>
                        </div>
                        <div class="p-4 hover-bg-white hover-shadow rounded"> <i class="flaticon-increase flat-medium icon-primary float-left mr-3" aria-hidden="true"></i>
                            <div class="d-table">
                                <h5 class="text-secondary mb-3">Full House</h5>
                                <p>Rent an apartment with furnishing & fully functional kitchen.</p>
                            </div>
                        </div>
                        <div class="p-4 hover-bg-white hover-shadow rounded"> <i class="flaticon-rent flat-medium icon-primary float-left mr-3" aria-hidden="true"></i>
                            <div class="d-table">
                                <h5 class="text-secondary mb-3">Private Rooms</h5>
                                <p>Rent a single room accommodation with furnishing & fully functional kitchen for boys & girls.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	How it work
        ============================================================-->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-secondary double-down-line text-center">How It Works</h2>
                        <span class="text-center mt-4 d-block mb-5">For Landlord</span> </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="icon-thumb-one text-center mb-5">
                            <div class="bg-primary text-white rounded-circle position-absolute z-index-9">1</div>
                            <div class="left-arrow"><i class="flaticon-investor flat-medium icon-primary" aria-hidden="true"></i></div>
                            <h5 class="text-secondary mt-5 mb-4">Submit details</h5>
                            <p>Submit  your house details with photos and features</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-thumb-one text-center mb-5">
                            <div class="bg-primary text-white rounded-circle position-absolute z-index-9">2</div>
                            <div class="left-arrow"><i class="flaticon-search flat-medium icon-primary" aria-hidden="true"></i></div>
                            <h5 class="text-secondary mt-5 mb-4">Accept terms and conditions</h5>
                            <p>Sign the agreement<br><br><br><br>For Tenant</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-thumb-one text-center mb-5">
                            <div class="bg-primary text-white rounded-circle position-absolute z-index-9">3</div>
                            <div><i class="flaticon-handshake flat-medium icon-primary" aria-hidden="true"></i></div>
                            <h5 class="text-secondary mt-5 mb-4">Get tenants</h5>
                            <p>Get tenants within a few days.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-thumb-one text-center mb-5">
                            <div class="bg-primary text-white rounded-circle position-absolute z-index-9">1</div>
                            <div class="left-arrow"><i class="flaticon-strategy flat-medium icon-primary" aria-hidden="true"></i></div>
                            <h5 class="text-secondary mt-5 mb-4">Search Property</h5>
                            <p>View properties according to your requirements.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-thumb-one text-center mb-5">
                            <div class="bg-primary text-white rounded-circle position-absolute z-index-9">2</div>
                            <div class="left-arrow"><i class="flaticon-money flat-medium icon-primary" aria-hidden="true"></i></div>
                            <h5 class="text-secondary mt-5 mb-4">Make a Deposit</h5>
                            <p>Confirm your booking.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-thumb-one text-center mb-5">
                            <div class="bg-primary text-white rounded-circle position-absolute z-index-9">3</div>
                            <div><i class="flaticon-handshake flat-medium icon-primary" aria-hidden="true"></i></div>
                            <h5 class="text-secondary mt-5 mb-4">Move-In</h5>
                            <p>Enjoy.</p>
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
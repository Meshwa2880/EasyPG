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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0" id="b1">Frequently Asked Questions</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">FAQ</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- FAQ Section Start -->
        <div class="full-row py-80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="navigation_link_widget mb-5 bg-gray p-4">
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">FAQ Categories</h4>
                            <ul>
                                <li> <a href="#b1">Getting Started</a> </li>
                                <li> <a href="#b2">How it works</a> </li>
                                <li> <a href="#b3">Why list with EasyPG?</a> </li>
                                <li> <a href="#b4">List My Property</a> </li>
                                <li> <a href="#b5">Property Inspection</a> </li>
                                <li> <a href="#b6">EasyPG Models</a> </li>
                                <li> <a href="#b7">Furnishing</a> </li>
                                <li> <a href="#b8">Rent & Security Deposit</a> </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="info-pages bg-gray px-4 py-5">
                        <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Getting Started</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">What is EasyPG?</h5>
                                    <p>EasyPG is a rental solution for young professionals who are looking for shared accommodations and families who are looking for full houses.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">What do we do?</h5>
                                    <p>EasyPG onboards owners and their houses and rents it out to tenants. EasyPG provides convenience to the owner in terms of showing the house to potential tenants, rent collection and service and maintenance of the property.</p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b2">How it works?</h5>
                                    <p>Once you share your details on our website, your property will be posted on our website for prospective tenants to schedule a visit slot to see the house and confirm booking.</p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" >How long will it take to find a tenant?</h5>
                                    <p>There are a variety of factors that influence how long it will take to find a tenant for a particular property, including: location, property condition, market conditions, time of year, schools, amenities and pricing.</p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">How it works</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">For Tenant</h5>
                                    <p>
                                    Step 1 - Search Property according to your requirements. <br>
                                    Step 2 - Make a Deposit using e-payment and confirm your booking. <br>
                                    Step 3 - Move-In.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b3">For Landlord</h5>
                                    <p>
                                    Step 1 - Submit your house details with photos and features. <br>
                                    Step 2 - Sign the agreement. <br>
                                    Step 3 - Get tenants within a few days.
                                    </p>
                                    <hr>
                                </div>
                            </div> 
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Why list with EasyPG?</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b4">How can buy a good property ?</h5>
                                    <p>1. Renting Service - Post your property and get verfied tenants. <br>
                                       2. Rental Service - Easiest way to rent a home. Search home according to your requirement and move-in. <br>
                                       3. Property Listing - Get property list and details according to your requirements. <br>
                                       4. Zero Brokerage - Save more when you rent with us. <br>
                                       5. E-Payment of Deposit - Landlord can recieve deposit amount online. <br>
                                       6. Post Rental Services - Tenant will be provided with the details of household help and other basic services. For example, plumber, electrician, maid,etc. <br> 
                                       7. Guided House Visits - Guided tour of property is provided to the interested tenants. <br>
                                       8. Sorting and Filtering - Tenant can list the propery according to his requirements.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">List My Property</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">How do I reach out to EasyPG to list my property?</h5>
                                    <p>Visit www.EasyPG.com and click on For Home Owners or call us on 8904-24-24-24 to give us your details. Once you share your details, one of the EasyPG representatives will get in touch with you and take you forward on the Listing.</p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b5">How much does it cost to list my property?</h5>
                                    <p>Nothing. It's free to list with NestAway.<br>
										What's more? We look for tenants for you.</p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Property Inspection</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white" id="b6">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Why does EasyPG perform a house inspection?</h5>
                                    <p>EasyPG performs a property inspection on all the prospective houses. This is done in order to check if the house meets the EasyPG standards.</p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white" >Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">What does EasyPG look for during the house inspection?</h5>
                                    <p>EasyPG checks if the house is as stated by the owner, in a livable condition, and in a safe neighborhood.</p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">EasyPG Models</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Shared house</h5>
                                    <p>We rent out shared houses to bachelors. These houses are generally on a bed-based model. The tenant can choose to rent out a room as well. You can choose whether you want to rent it out to bachelors - Girls or Boys. To enrol for our shared house model, as the owner, you have to ensure that your house fits the EasyPG standards. A shared house should be a fully furnished, ready-to-move-in house for tenants.
Shared houses are a great way to make new friends in a new place.</p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b7">Full house</h5>
                                    <p>We rent out full houses to Families or a group of friends. Here, the lessee will be an individual who will be responsible for all other tenants in the house. Full houses can be rented out with or without furnishing, basis your choice and convenience.</p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Furnishing</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b8">Does my house need to be fully-furnished for me to list my house with EasyPG?</h5>
                                    <p>No, you don't need to have a fully-furnished house to list with EasyPG. However, if you want to rent out your house as a shared house, the house has to be fully-furnished as per EasyPG standards. Don't worry, you can either purchase the furniture from EasyPG's market place at competitive prices or rent it with the rental packages we offer.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Rent & Security Deposit</h4>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Who pays the Security Deposit to me?</h5>
                                    <p>Tenant will directly transfer the deposit in your account i.e in landlord's bank account for booking confirmation.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">What is the mode of Security Deposit payment?</h5>
                                    <p>EasyPG provides online payment facility for security deposit payment. We do not do cash transactions.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">What are the parameters that determine the rent of my property?</h5>
                                    <p>Multiple parameters help us determine the rent for your property. <br>
                                    The most important ones are: <br>
									1. Location and neighbourhood of the house <br>
									2. Tenancy type chosen by you, i.e., whether you want to rent your house to singles or to a family. <br>
									3. Size of the house and number of bedrooms <br>
									4. Newness of the house 
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4"> <span class="faq-question bg-primary text-white">Q</span>
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">When will I receive deposit?</h5>
                                    <p>When any tenant want to confirm booking of your property you will be provided with security deposit.</p>
                                    <hr>
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
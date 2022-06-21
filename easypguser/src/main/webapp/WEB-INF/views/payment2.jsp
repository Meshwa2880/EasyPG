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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Payment</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Property</li>
                                <li class="breadcrumb-item active" aria-current="page">Payment</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="w-50 m-auto w-sm-100">
                            <div class="login-form">
                                <h4 class="text-secondary mb-4">Enter Card Details</h4><br>
                                <form class="icon-form">
                                    <div class="form-group">
                                    	<div>
                                    		<label>Cardholder Name</label>
                                    		<input type="text" class="form-control bg-gray" placeholder="">
                                		</div>
                                		<br>
                                		<div>
                                    		<label>Card Number</label>
                                    		<input type="text" class="form-control bg-gray" placeholder="">
		                                </div>
		                                <br>
		                                <div>
                                                <select class="form-control bg-gray" style="width:80px">
                                                    <option>MM</option>
                                                    <option>01</option>
                                                    <option>02</option>
                                                    <option>03</option>
                                                    <option>04</option>
                                                    <option>05</option>
                                                    <option>06</option>
                                                    <option>07</option>
                                                    <option>08</option>
                                                    <option>09</option>
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option>12</option>
                                                </select>
                                		 </div>
                                		 <br>
                                		 <div>
                                                <select class="form-control bg-gray" style="width:90px">
                                                    <option>YYYY</option>
                                                    <option>2020</option>
                                                    <option>2021</option>
                                                    <option>2022</option>
                                                    <option>2023</option>
                                                    <option>2024</option>
                                                    <option>2025</option>
                                                    <option>2026</option>
                                                    <option>2027</option>
                                                    <option>2028</option>
                                                    <option>2029</option>
                                                    <option>2030</option>
                                                </select>
                                		 </div>
                                		 <br>
                                		 <div>
                                    		<label>CVV</label>
                                    		<input type="text" class="form-control bg-gray" style="width:90px">
                                		</div>
                                		<br>
                                		<div class="form-group form-check">
                                    		<input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    		<label class="form-check-label" for="exampleCheck1">Accept Terms and Condition</label>
                                		</div>
                                </div>
                                   <a class="btn btn-primary mt-3" style="margin-left:450px" href="payment3.jsp">Pay Now</a>
                                </form>
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
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
                                <h4 class="text-secondary mb-4">Choose Payment Method</h4><br>
                                <form class="icon-form">
                                    <div class="form-group">
                                    <h4><input type="radio" class="radio_check" style="display:''" name="pay" />Visa / Visa Debit / Visa Electron</h4><br>
									<h4><input type="radio" class="radio_check" style="display:''" name="pay" />Mastercard</h4> <br>
									<h4><input type="radio" class="radio_check" style="display:''" name="pay" />Amex</h4> <br>
									<h4><input type="radio" class="radio_check" style="display:''" name="pay" />Cash</h4> <br>
                                </div>
                                   <a class="btn btn-primary mt-3" style="margin-left:500px" href="payment2.jsp">Next</a>
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
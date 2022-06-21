<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Feedback</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Feedback</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	Get In Touch
===============================================================-->
        <div class="full-row pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <span class="text-center mt-4 d-block mb-5">How is your experience with Easy-PG? </span> </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <form:form role="form" modelAttribute="feedback" class="w-100" action="/easypguser/feedback/savefeedback" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                    <form:input type="hidden" name="feedbackId" path="feedbackId" id="feedbackId" />
                                        <form:input type="text" id="name" name="name" path="name" class="form-control bg-gray" placeholder="Your Name" pattern="[A-Za-z]{1,}" title="Name should only conatins alphabets" required="true"/>
                                    </div>
                                    <div class="form-group">
                                        <form:input type="email" id="email" name="email" path="email" class="form-control bg-gray" placeholder="Email Address" required="true"/>
                                    </div>
                                    
                                    <div class="form-group">
                                        <form:input type="text" id="subject" name="subject" path="subject" class="form-control bg-gray" placeholder="Subject" required="true"/>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <form:textarea id="feedbackDesc" name="feedbackDesc" path="feedbackDesc" class="form-control bg-gray" rows="5" placeholder="Type Comments..." required="true"></form:textarea>
                                    </div>
                                    </div>
                              <button type="submit" class="btn btn-primary mt-3">Send Feedback</button>
 		
							
                                
                                
                            </div>
                        </form:form>
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
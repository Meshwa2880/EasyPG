<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Book Free Visit</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Property</li>
                                <li class="breadcrumb-item active" aria-current="page">Book Free Visit</li>
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
                                <h4 class="text-secondary mb-4">Choose Day and Time </h4><br>
                                <form:form method="post" modelAttribute="freevisit"
									action="/easypguser/freevisit/confirmfreevisit">
									<form:input type="hidden" name="visitId" path="visitId" id="visitId"/>
									<form:input type="hidden" name="userId" path="userId" id="userId"/>
									<form:input type="hidden" name="propertyId" path="propertyId" id="propertyId"/>
								
                                    <div class="form-group">
                                    	<div>
                                    		<label>Date</label><form:input type="datetime-local" path="visitDate" name="visitDate" style="margin-left:10px"/>
                                    	</div>
                                    	<%-- <div>
                                    		<label>Time</label><form:input type="time" path="visitTime" name="visitTime"  style="margin-left:10px"/>
                                    	</div> --%>
                                	</div>
                                   <input class="btn btn-primary btn-round" type="submit"
													value="Book Visit" formaction="/easypguser/freevisit/addFreeVisit" />
                                </form:form>
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
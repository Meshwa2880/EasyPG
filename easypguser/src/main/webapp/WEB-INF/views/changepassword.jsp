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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Password Recovery</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">New Password</li>
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
                                <h4 class="text-secondary mb-4">Change Your Password</h4>
                                <form:form  method="post" 
								modelAttribute="cpass" action="/easypguser/user/change" class="icon-form">
                                    <div class="form-group password">
                                        <label>Old Password</label>
                                        <input type="password" path="oldpassword" name="oldpassword" class="form-control bg-gray" placeholder="" required>
                                    </div>
                                    <div class="form-group password">
                                        <label>New Password</label>
                                        <input type="password" path="password" name="password" class="form-control bg-gray" placeholder="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                    </div>
                                    <div class="form-group password">
                                        <label>Confirm Password</label>
                                        <input type="password" path="cpassword" name="cpassword" class="form-control bg-gray" placeholder="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                    </div>
                                    <%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;margin-left:70px"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
								<center>
                                  <div>
                                        <input type="Submit" class="btn btn-primary mt-3">
                                       <a href="/easypguser/user/home"><button type="submit" class="btn btn-primary mt-3">Reset</button></a>
                                        
                                        </div></center>
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
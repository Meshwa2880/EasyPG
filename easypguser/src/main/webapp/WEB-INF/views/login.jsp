<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Login</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                
                                <li class="breadcrumb-item active" aria-current="page">Login</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="mb-5">
                            <h4 class="mb-4 text-secondary">Welcome</h4>
                            <p></p>
                        </div>
                        <div class="login-condition flat-small flat-primary">
                            <h5 class="mb-4 text-secondary">Keep in a mind a few basic password rules :</h5>
                            <div class="row">
                                <div class="col-md-8 col-xl-6">
                                    <ul>
                                        <li><i class="flaticon-checked text-primary"></i>Change your passwords periodically</li>
                                        <li><i class="flaticon-checked text-primary"></i>Avoid re-using password for multiple site</li>
                                        <li><i class="flaticon-checked text-primary"></i>Use complex characters including uppercase and number</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="mt-sm-50"> <a href="login.html" class="down-active text-secondary mr-3">Login</a>
                            </li>
                          
                            <form method="post" action="/easypguser/user/loggingIn" modelAttribute="log" class="mt-5 icon-form">
                                <div class="form-group user">
                              <label for="exampleInputEmail1">Username</label>
                                    <input id="exampleInputEmail1" type="text" id="email" name="email" path="email" class="form-control bg-gray" placeholder="Username" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter Valid Email Address" required> 
                                </div>
                                <div class="form-group password">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input id="exampleInputPassword1" type="password" name="password" path="password" class="form-control bg-gray" placeholder="Password" required>
                                </div>
                                
                                <%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;margin-left:70px"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
                                <button type="submit" class="btn btn-primary mt-3">Login</button>
                                <a  class="text-secondary hover-text-primary d-block mt-4" href="/easypguser/user/forgotpassword">I forgot my password !</a>
								<a  class="text-secondary hover-text-primary d-block mt-4" href="/easypguser/user/registration">Don't have an account? Register</a>
                            </form>
                            <!-- <div class="social-media d-block mt-5">
                                <button class="btn facebook w-100">Login With Facebook</button>
                                <button class="btn twiter w-100">Login With Twitter</button>
                                <button class="btn googleplus w-100">Login With Google Plus</button>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="full-row bg-gray p-0">
            <div class="container">
                <div  class="row">
                    <div class="col-lg-12">
                        
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
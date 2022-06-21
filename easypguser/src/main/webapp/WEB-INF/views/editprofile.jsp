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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Edit Profile</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Edit Profile</li>
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
                           <div class="acc_profile" style="margin-left: 200px;">
								<input type="image" src="/easypguser/resources/images/team/01.jpg" alt="img" style="width:100%;height:100%;border-radius:100%;">
								<input type="file" id="my_file" style="display:none">
							</div>
						</div> 
						<br>
						<br>
						<div class="row">	  
                        	<label>Email</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:75px;margin-right:20px;">
                        </div>
						<br>
						<div class="row">	  
                        	<label>First Name</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:37px;margin-right:20px;">
                        	<label>Last Name</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:10px;">
                        </div>
                        <br>
                        <div class="row">	  
                        	<label>Date of Birth</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:25px;margin-right:20px;">
                        	<label>Gender</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:31px;">
                        </div>
                        <br>
                        <div class="row">	  
                        	<label>Mobile Number</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:10px;margin-right:20px;">
                        	<label>Zip Code</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:18px;">
                        </div>
                        <br>
                        <div class="row">	  
                        	<label>Address</label>
                        	<input type="text" class="form-control bg-gray" style="width:88%;margin-left:57px;margin-right:20px;">
                        </div>
                        <br>
                        <div class="row">	  
                        	<label>Area</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:80px;margin-right:20px;">
                        	<label>City</label>
                        	<input type="text" class="form-control bg-gray" style="width:40%;margin-left:52px;">
                        </div>
                        <br>
                        <a class="btn btn-primary mt-3" href="editprofile.jsp" style="margin-left:1020px;">Save Changes</a>
                        <br>
                        <br>
            </div>
        </div>
    </div>
</div>
    	<%@include file="footer.jsp" %>
    	
    	<!-- Scroll to top -->
        <a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a> 
        <!-- End Scroll To top --> 
    	
    	
   <%@include file="script.jsp" %>
   <script>
	   $("input[type='image']").click(function(){
	   $("input[id='my_file']").click();
  	   });
   </script> 
</body>
</html>
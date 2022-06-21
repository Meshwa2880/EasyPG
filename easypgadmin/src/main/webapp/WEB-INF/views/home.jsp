<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

	<%@include file = "head.jsp" %>
</head>
<body>

  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">

	    
    <!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->
	
		<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/easypgadmin/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/sidebar-1.jpg">
    <div class="logo">
        <a  class="simple-text logo-mini">
             PG
        </a>

        <a  class="simple-text logo-normal">
             Easy-PG 
        </a>
    </div>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="/easypgadmin/resources/sample-profile-picture.png"/>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                     	 Meshwa Patel
                          <b class="caret"></b>
                    </span>
                </a>
                <div class="clearfix"></div>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                       
                        <li>
                            <a href="/easypgadmin/admin/editAdmin/${admin.adminId}">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/admin/adminRegistrationPage">
                                <span class="sidebar-mini"> AA </span>
                                <span class="sidebar-normal"> Add Admin </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/admin/changePassword">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/admin/adminList">
                                <span class="sidebar-mini"> AL</span>
                                <span class="sidebar-normal"> Admin List </span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="/easypgadmin/admin/login">
                                <span class="sidebar-mini"> LO </span>
                                <span class="sidebar-normal"> Logout </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">

            <li>
                <a href="/easypgadmin/user/userList">
                    <i class="material-icons">settings_applications</i>
                    <p>Manage Users</p>
                </a>
                </li>

            <li>
                <a data-toggle="collapse" href="#componentsExamples">
                    <i class="material-icons">location_on</i>
                    <p> Manage Location 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="componentsExamples">
                    <ul class="nav">
                        <li>
                            <a href="/easypgadmin/area/areaList">
                                <span class="sidebar-mini"> A </span>
                                <span class="sidebar-normal"> Area </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/city/cityList">
                                <span class="sidebar-mini"> C </span>
                                <span class="sidebar-normal"> City </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            <!-- <!-- <li>
                <a data-toggle="collapse" href="#formsExamples">
                    <i class="material-icons">burst_mode</i>
                    <p> Manage Pages 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="formsExamples">
                    <ul class="nav">
                        <li>
                            <a href="/easypgadmin/pages/others/aboutus.jsp">
                                <span class="sidebar-mini"> A </span>
                                <span class="sidebar-normal"> About Us </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/pages/others/contactus.jsp">
                                <span class="sidebar-mini"> C </span>
                                <span class="sidebar-normal"> Contact Us </span>
                            </a>
                        </li>
                        <li>
 -->                   <!--          <a href="/easypgadmin/faq.jsp">
                                <span class="sidebar-mini"> F </span>
                                <span class="sidebar-normal"> FAQ </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li> -->
 
            <li>
                <a data-toggle="collapse" href="#tablesExamples">
                    <i class="material-icons">house</i>
                    <p> Manage Property 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="tablesExamples">
                    <ul class="nav">
                        <li>
                            <a href="/easypgadmin/property/propertyList">
                                <span class="sidebar-mini"> L </span>
                                <span class="sidebar-normal"> Listed Properties </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/booking/bookingList">
                                <span class="sidebar-mini"> B </span>
                                <span class="sidebar-normal"> Booked Properties </span>
                            </a>
                        </li>
                        <li>
                            <a href="/easypgadmin/freevisit/freevisitList">
                                <span class="sidebar-mini"> V </span>
                                <span class="sidebar-normal"> Free Visit </span>
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </li>

            <li>
                <a href="/easypgadmin/review/reviewList">
                    <i class="material-icons">sms</i>
                    <p> Reviews </p>
                </a>
            </li>
            
            <li>
                <a href="/easypgadmin/feedback/feedbackList">
                    <i class="material-icons">comment</i>
                    <p> Comments </p>
                </a>
            </li>
            
           <!--  <li>
                <a href="/easypgadmin/pages/others/payment.jsp">
                    <i class="material-icons">money</i>
                    <p> Payments </p>
                </a>
            </li>
            
			<li>
                <a href="/easypgadmin/pages/others/socialmedia.jsp">
                    <i class="material-icons">share</i>
                    <p> Social Media Accounts </p>
                </a>
            </li>
             
            <li>
                <a href="/easypgadmin/admin/home">
                    <i class="material-icons">apps</i>
                    <p> Generate Report </p>
                </a>
            </li>-->
            
        </ul>
    </div>
</div>
	    <div class="main-panel">
		<%@include file = "header.jsp" %>
				<div class="content">
					<div class="container-fluid">
					 	<div class="row">
							<div class="col-md-12">
								<div class="card">			
									<div class="card-content">
										<h3 align="center">Welcome</h3>
										<br/>
										<!-- <img src="/easypgadmin/resources/Easy Pg.png" style="width:100px;height:100px;border-radius:3px;margin-left:440px"/>
										 <p>
										<h4>Easy-PG is a Home Rental Network attempting to provide better rental solutions via design & technology.<br/>
										We help find, book rental homes of choice across Gujarat.<br/>
										We also provides a platform to submit your property.<br/>
										Whatever be your budget, whatever you may call a home (a bed, a room or an entire house), 
										we have something for you!<br/>
										<h4/>
										<br/>
										</p>-->
									</div>
								</div>
							</div>
						</div>
					</div>




					</div>
				</div>
		<%@include file = "footer.jsp" %>
	</div>
	</div>
</body>
  
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
    
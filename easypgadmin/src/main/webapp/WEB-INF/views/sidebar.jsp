<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.easypg.model.Admin"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("admin")==null)
	response.sendRedirect("error");%> 
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
                <!-- <img src="/easypgadmin/resources/images/profilePicture/${admin.profilePicture}"/> -->
                <img src="/easypgadmin/resources/sample-profile-picture.png"/>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                     	 <% Admin admin = (Admin)session.getAttribute("admin"); %> 
                         <% out.println(admin.getFname()); %>  
                         <% out.print(admin.getLname()); %>
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

</body>
</html>
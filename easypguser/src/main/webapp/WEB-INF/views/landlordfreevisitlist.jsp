<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Free Visit List</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Free Visit List</li>
                            </ol>
                        </nav>
                    </div>
                    
                </div>
            </div>
        </div>
        
      <div class="full-row">
            <div class="container">
                <div class="row">
                    
    				    <div class="col-md-12 col-xl-12">
                        <div class="row">
                            
                                <table class="w-100 items-list bg-transparent">
                                    <thead>
                                        <tr class="bg-white">
                                            
                                            <th>Property Name</th>
                                            <th>Tenant Name</th>
                                            <th>Visit Date and Time</th>
                                           
                                            <th>Status</th>
                                            <th></th>
                                          
                                        </tr>
                                    </thead>     
                               <tbody>
                                <c:forEach items="${freevisitList}" var="freevisit">
                                        <tr>
                                      
                                        
                                            <td><c:out value="${freevisit.pname}"/></td>
                                            <td>${freevisit.tname}</td>
                                          	<td>${freevisit.visitTime}</td>
                                          	<%-- <td>${freevisit.visitTime}</td> --%>
                                            <td>${freevisit.status}</td>
                                                              
                                             <c:if test = "${freevisit.status == 'pending'}">
											<td><a href="/easypguser/freevisit/freevisitStatus/${freevisit.visitId}/accept" class="btn btn-sm bg-success-light">
												<i class="fas fa-check"></i> Accept
											</a></td>
											<td><a href="/easypguser/freevisit/freevisitStatus/${freevisit.visitId}/decline"class="btn btn-sm bg-danger-light">
												<i class="fas fa-times"></i> Decline
											</a></td>
										</c:if>
										<c:if test = "${freevisit.status == 'decline'}">
											
											<td><button disabled="disabled" href="/easypguser/freevisit/freevisitStatus/${freevisit.visitId}/decline"class="btn btn-sm bg-danger-light">
												<i class="fas fa-times"></i> Decline
											</button></td>
										</c:if>
										<c:if test = "${freevisit.status == 'accept'}">
											<td><button disabled="disabled" href="/easypguser/freevisit/freevisitStatus/${freevisit.visitId}/accept" class="btn btn-sm bg-success-light">
												<i class="fas fa-check"></i> Accept
											</button></td>
											
										</c:if>
										</tr>
  									</c:forEach>
                                </tbody>
  
                           
                                                 </table></div></div>
                    </div>
                </div><!-- end content-->
            </div><!--  end card  -->
        </div>
        
  
  
  
  
                        
 <%@include file="footer.jsp" %>
    	
    	<!-- Scroll to top --> 
        <a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a> 
        <!-- End Scroll To top --> 
    	
    	
   <%@include file="script.jsp" %> 
</body>
</html>       

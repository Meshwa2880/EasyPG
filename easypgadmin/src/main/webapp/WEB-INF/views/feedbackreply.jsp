	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body>
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

<div class="wrapper">
<%@include file = "sidebar.jsp" %>
	<div class="main-panel">
		<%@include file = "header.jsp" %>
	<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">perm_identity</i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">Reply<small class="category"></small></h4>
						<form:form class="form-horizontal" modelAttribute="feedback" action="/easypgadmin/feedback/sendReply"  method="post">
						<div class="row">
							<label class="col-md-1 label-on-left">ID</label>
							<div class="col-md-5">
								<div class="form-group label-floating is-empty">
									<label class="control-label"></label>
	                                <form:input type="hidden" class="form-control" id="feedbackId" placeholder=""  path="feedbackId"/>
	                            </div>
	    					</div>
	    				</div>
	    				
						<div class="row">
							<label class="col-md-1 label-on-left">Name</label>
							<div class="col-md-5">
								<div class="form-group label-floating is-empty">
									<label class="control-label"></label>
	                                <form:input type="text" class="form-control" id="name"  path="name"/>
	                            </div>
	    					</div>
	    				</div>
	    				<div class="row">
							<label class="col-md-1 label-on-left">Email</label>
							<div class="col-md-5">
								<div class="form-group label-floating is-empty">
									<label class="control-label"></label>
	                                <form:input type="text" class="form-control" id="email"  path="email"/>
	                            </div>
	    					</div>
	    				</div>
	    				<br>
	    				<div class="row">
							<label class="col-md-1 label-on-left">Subject</label>
							<div class="col-md-5">
								<div class="form-group label-floating is-empty">
									<label class="control-label"></label>
	                                <form:input type="text" class="form-control" id="subject"  path="subject"/>
	                            </div>
	    					</div>
	    				</div>
	    				<br>
						<div class="row">
							<label class="col-md-1 label-on-left">Message</label>
							<div class="col-md-5">
								<div class="form-group label-floating is-empty">
									<label class="control-label"></label>
	                                <form:input type="text" class="form-control" id="feedbackDesc"  path="feedbackDesc"/>
	                            </div>
	    					</div>
	    				</div>
	    				<br>
						
						<div class="row">
							<div class="col-md-12">
							<div class="form-group label-floating is-empty">
								<label class="control-label">
									Write Reply Here
								</label>	
								<form:textarea class="form-control" rows="5" id="reply" path="reply"/></textarea>
								<span class="material-input"></span>
							</div>
							</div>
						</div>
						<button type="submit" class="btn btn-fill btn-rose">Send Reply</button>
						 <button type="reset" class="btn btn-primary">Cancel</button>
  
					</form:form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    </div>
    </div>
    </div>
    </div>
</body>
<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
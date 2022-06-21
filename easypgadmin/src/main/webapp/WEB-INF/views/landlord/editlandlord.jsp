<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="../head.jsp" %>
</head>
<body>
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

<div class="wrapper">
<%@include file = "../sidebar.jsp" %>
	<div class="main-panel">
		<%@include file = "../header.jsp" %>
	<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">perm_identity</i>
                </div>
                <div class="col-md-12">
                <div class="card-content">
                    <h4 class="card-title">Landlord Profile<small class="category"></small></h4>
                   <br>
                    <div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:-10px;margin-left:0%">
								<div class="fileinput-new thumbnail img-circle">
									<img src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail img-circle" style=""></div>
								<div>
									<span class="btn btn-round btn-rose btn-file">
										<span class="fileinput-new">Edit Photo</span>
										<span class="fileinput-exists">Change</span>
										<input type="hidden"><input type="file" name="..."></span>
									<br>
									<a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
								</div>
							</div>
                    </div> 
                    
						
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Email Address</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">First Name</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Last Name</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                        </div>
						<div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Date Of Birth</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Gender</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                        </div>
						<div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Mobile Number</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Zip Code</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group label-floating">
                                    <label class="control-label">Address</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">Area</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group label-floating">
                                    <label class="control-label">City</label>
                                    <input type="text" class="form-control" >
                                </div>
                            </div>
                        </div>
						<button type="submit" class="btn btn-rose pull-right">Save Changes</button>
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <%@include file="../footer.jsp" %>
    </div>
    </div>
</body>
<!--   Core JS Files   -->
	<%@include file = "../corejsfiles.jsp" %>
</html>
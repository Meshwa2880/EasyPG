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
                <div class="card-content">
                    <h4 class="card-title">About Us<small class="category"></small></h4>
						<form class="form-horizontal">
						<div class="row">
							<div class="col-md-12">
							<div class="form-group label-floating is-empty">
								<label class="control-label">
									Edit Text
								</label>	
								<textarea class="form-control" rows="5"></textarea>
								<span class="material-input"></span>
							</div>
							</div>
						</div>
						<button type="submit" class="btn btn-fill btn-rose">Submit</button>
					</form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="../footer.jsp" %>
    </div>
    </div>
    </div>
    </div>
</body>
<!--   Core JS Files   -->
	<%@include file = "../corejsfiles.jsp" %>
</html>
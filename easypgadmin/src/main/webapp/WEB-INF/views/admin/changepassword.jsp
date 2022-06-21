<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="../head.jsp"%>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">
		<%@include file="../sidebar.jsp"%>
		<div class="main-panel">
			<%@include file="../header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6" style="margin-left: 25%">
							<div class="card">
								<div class="card-header card-header-icon"
									data-background-color="rose">
									<i class="material-icons">perm_identity</i>
								</div>

								<div class="card-content">
									<h4 class="card-title">Change Password</h4>
									<form:form method="post" action="/easypgadmin/admin/change"
										modelAttribute="cpass">
										<div class="form-group label-floating is-empty">
											<div class="col-lg-11 col-md-9 col-sm-3">
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span>
													<form:input type="password" placeholder="Old Password"
														class="form-control" path="password" name="password" required="true"/>
												</div>
											</div>
										</div>
										<br>
										<br>
										<div class="form-group label-floating is-empty">
											<div class="col-lg-11 col-md-9 col-sm-3">
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span> <input type="password" placeholder="New Password"
														class="form-control" path="npassword" name="npassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
												</div>
											</div>
										</div>
										<br>
										<br>
										<div class="form-group label-floating is-empty">
											<div class="col-lg-11 col-md-9 col-sm-3">
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span> <input type="password" placeholder="Confirm Password"
														class="form-control" path="cpassword" name="cpassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
												</div>
											</div>
										</div>
										<br>
										<br>
										<%
											if (request.getParameter("errorMsg") != null) {
										%>
										<div style="color: red;"><%=request.getParameter("errorMsg")%></div>
										<%
											}
										%>
										<button type="submit" class="btn btn-fill btn-rose"
											style="margin-left: 40%">Submit</button>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<%@include file="../footer.jsp"%>
</body>
<!--   Core JS Files   -->
<%@include file="../corejsfiles.jsp"%>
</html>
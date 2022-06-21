<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<%@include file="head.jsp"%>
</head>


<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">


		<!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->

		<%@include file="sidebar.jsp"%>
		<div class="main-panel">
			<%@include file="header.jsp"%>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-icon"
									data-background-color="rose">
									<i class="material-icons">assignment</i>
								</div>
								<div class="card-content">
									<h4 class="card-title">
										Booked Properties
									</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<div class="material-datatables">
													<div id="datatables_wrapper"
														class="dataTables_wrapper form-inline dt-bootstrap">
														
														<div class="row">
															<div class="col-sm-12">
																<table id="datatables"
																	class="table table-striped table-no-bordered table-hover dataTable dtr-inline"
																	cellspacing="0" width="100%" style="width: 100%;"
																	role="grid" aria-describedby="datatables_info">
																	<thead>
																		<tr role="row">
																			<th  tabindex="0"
																				aria-controls="datatables" rowspan="1" colspan="1"
																				style="width: 150px;"
																				aria-label="Position: activate to sort column ascending">Property</th>
																			<th  tabindex="0"
																				aria-controls="datatables" rowspan="1" colspan="1"
																				style="width: 150px;"
																				aria-label="Office: activate to sort column ascending">Tenant</th>
																			<th  tabindex="0"
																				aria-controls="datatables" rowspan="1" colspan="1"
																				style="width: 150px;"
																				aria-label="Office: activate to sort column ascending">Landlord</th>
																			<th  tabindex="0"
																				aria-controls="datatables" rowspan="1" colspan="1"
																				style="width: 150px;"
																				aria-label="Office: activate to sort column ascending">Status</th>
																			<th  tabindex="0"
																				aria-controls="datatables" rowspan="1" colspan="1"
																				style="width: 150px;"
																				aria-label="Office: activate to sort column ascending">MoveIn
																				Date</th>
																			<th  tabindex="0"
																				aria-controls="datatables" rowspan="1" colspan="1"
																				style="width: 150px;"
																				aria-label="Office: activate to sort column ascending">Booking
																				Date</th>

																		</tr>
																	</thead>
																	<!-- <tfoot>
                                <tr><th rowspan="1" colspan="1">First Name</th>
                                <th rowspan="1" colspan="1">Last Name</th>
                                <th rowspan="1" colspan="1">Email</th>
                                </tr>
                            </tfoot> -->
																	<tbody>
																		<c:forEach items="${bookingList}" var="booking">
																			<tr role="row" class="odd">
																				<td tabindex="0" class="sorting_1">${booking.pname}</td>
																				<td>${booking.tname}</td>
																				<td>${booking.lname}</td>
																				<td>${booking.status}</td>
																				<td>${booking.moveinDate}</td>
																				<td>${booking.bookingDate}</td>


																				
																			</tr>
																		</c:forEach>
																	</tbody>
																</table>
															</div>
														</div>
																											</div>
												</div>
												</div>
												<!-- end content-->
												</div>
												<!--  end card  -->
												</div>



												<%@include file="footer.jsp"%>
												</div>
												</div>
</body>
<!--   Core JS Files   -->
<%@include file="corejsfiles.jsp"%>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/tables/extended.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file = "../head.jsp" %>
	
</head>


<body >
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

    <%@include file = "../sidebar.jsp" %>
	    <div class="main-panel">
	<%@include file = "../header.jsp" %>
			
			
				<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">assignment</i>
                </div>

                <div class="card-content">
                    <h4 class="card-title">Admin</h4>
                     <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="Add" style="margin-left:91%; margin-top:-4%">
                             <a href="/easypgadmin/admin/adminRegistrationPage"><i class="material-icons icon-image-preview" style="color:#ec407a; font-size:50px">add_box</i>
                                        </button></a>  
                    <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                    </div>
                    <div class="material-datatables">
                        <div id="datatables_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"><div id="datatables_filter" class="dataTables_filter"><label class="form-group form-group-sm is-empty"></div></div></div><div class="row"><div class="col-sm-12"><table id="datatables" class="table table-striped table-no-bordered table-hover dataTable dtr-inline" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
                            <thead>
                                <tr role="row">
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">First Name</th>
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Position: activate to sort column ascending">Last Name</th>
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Email Id</th>
                                </tr>
                            </thead>
                            <!-- <tfoot>
                                <tr><th rowspan="1" colspan="1">First Name</th>
                                <th rowspan="1" colspan="1">Last Name</th>
                                <th rowspan="1" colspan="1">Email</th>
                                </tr>
                            </tfoot> -->
                            <tbody>
                            <c:forEach items="${adminList}" var="admin">
                            <tr role="row" class="odd">
                                    <td tabindex="0" class="sorting_1">${admin.fname}</td>
                                    <td>${admin.lname}</td>
                                    <td>${admin.email}</td>
                                    <td class="td-actions text-right">
                                    	<a href="/easypgadmin/admin/viewAdmin/${admin.adminId}">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">person</i>
                                        </button></a>
                                        <a href="/easypgadmin/admin/editAdmin/${admin.adminId}">
                                        <button type="button" rel="tooltip" class="btn btn-success btn-simple" rel="tooltip" data-placement="bottom" title="Edit">
                                            <i class="material-icons">edit</i>
                                        </button></a>
                                        <a href="/easypgadmin/admin/deleteAdmin/${admin.adminId}">
                                        <button type="button" rel="tooltip" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove" onclick="demo.showSwal('delete-message')">
                                            <i class="material-icons">close</i>
                                        </button></a>
                                        
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                        </table></div></div>
                    </div>
                </div><!-- end content-->
            </div><!--  end card  -->
        </div>
        
			<%@include file = "../footer.jsp" %>
		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "../corejsfiles.jsp" %>
</html>
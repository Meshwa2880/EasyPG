<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
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
                    <h4 class="card-title">Features
                    </h4>
                      <a href="edittenant.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="Add">
                                            <i class="material-icons">add</i>
                                        </button></a>
                                        Add Feature
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-left">Sr No.</th>
                                    <th>Features</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">1</td>
                                    <td>
										<div class="checkbox" style="display:inline">
											<label>
												<input type="checkbox" name="optionsCheckboxes">Feature 1
											</label>
										</div>
									</td>
									<td class="td-actions text-right">
                                    	 <a href="edittenant.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="Edit">
                                            <i class="material-icons">edit</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">delete</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">2</td>
                                    <td>
										<div class="checkbox" style="display:inline">
											<label>
												<input type="checkbox" name="optionsCheckboxes">Feature 2
											</label>
										</div>
									</td>
									<td class="td-actions text-right">
                                    	 <a href="edittenant.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="Edit">
                                            <i class="material-icons">edit</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">delete</i></a>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="text-left">3</td>
                                    <td>
										<div class="checkbox" style="display:inline">
											<label>
												<input type="checkbox" name="optionsCheckboxes">Feature 3
											</label>
										</div>
									</td>
									<td class="td-actions text-right">
                                    	 <a href="edittenant.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="Edit">
                                            <i class="material-icons">edit</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">delete</i></a>
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
			<%@include file = "../footer.jsp" %>
		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "../corejsfiles.jsp" %>
</html>

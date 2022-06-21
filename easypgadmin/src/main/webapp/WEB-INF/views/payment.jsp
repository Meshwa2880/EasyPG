<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
	<%@include file = "head.jsp" %>
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

    <%@include file = "sidebar.jsp" %>
	    <div class="main-panel">
	<%@include file = "header.jsp" %>
			
			
				<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">assignment</i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">Transactions</h4>  
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">Sr No.</th>
                                    <th><a style="color:black">To</a></th>
                                    <th><a style="color:black">From</a></th>
                                    <th><a style="color:black">Date & Time</a></th>
                                    <th><a style="color:black">Property Title</a></th>
                                    <th><a style="color:black">Amount</a></th>
                                </tr>
                             	<tr>
                                    <th class="text-center">1</th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">12/08/2020 8:51 AM</a></th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">20000</a></th>
                                </tr>
                                <tr>
                                    <th class="text-center">2</th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">12/08/2020 8:51 AM</a></th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">20000</a></th>
                                </tr>
                                <tr>
                                    <th class="text-center">3</th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">12/08/2020 8:51 AM</a></th>
                                    <th><a style="color:black">Name</a></th>
                                    <th><a style="color:black">20000</a></th>
                                </tr>
                                
                            </thead>
                            
                        </table>
                        
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

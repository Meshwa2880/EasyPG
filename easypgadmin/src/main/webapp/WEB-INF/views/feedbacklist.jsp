<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <h4 class="card-title">Feedbacks</h4>  
                    <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                    </div>
                    <div class="row">
                    
                    </div>
                    <div class="material-datatables">
                        <div id="datatables_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"><div id="datatables_filter" class="dataTables_filter"></div></div></div><div class="row"><div class="col-sm-12"><table id="datatables" class="table table-striped table-no-bordered table-hover dataTable dtr-inline" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
                            <thead>
                                <tr role="row">
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">ID</th>
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
                                
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 200px;" aria-label="Position: activate to sort column ascending">Email</th>
                                <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Subject</th>
                               <th  tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Position: activate to sort column ascending">Message</th>
                               <th tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Position: activate to sort column ascending">Time</th>
                               
                                </tr>
                            </thead>
                             <tbody>
                <c:forEach var="fb" items="${list}">
                
               <tr>
               	 <td><c:out value="${fb.feedbackId}" /></td>
                    <td><c:out value="${fb.name}" /></td>
            	     <td><c:out value="${fb.email}" /></td>
                    <td><c:out value="${fb.subject}" /></td>
					<td><c:out value="${fb.feedbackDesc}" /></td>
                    <td><c:out value="${fb.feedbackDate}" /></td>
               		<td class="td-actions text-right">
                        <a href="/easypgadmin/feedback/replyFeedback/${fb.feedbackId}"><button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="Reply">
                         <i class="material-icons">reply</i>
                                        </button></a>
						<a href="/easypgadmin/feedback/deleteFeedback/${fb.feedbackId}"><button type="button" rel="tooltip" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove" onclick="demo.showSwal('delete-message')">
                         <i class="material-icons">delete</i>
                         </button></a>
                        </td>
 				</tr>
 				</c:forEach>
                               </tfoot>
                                        
                       
                    </table></div></div>
                    </div>
                </div><!-- end content-->
            </div><!--  end card  -->
        </div>
			<%@include file = "footer.jsp" %>
		</div>
	</div>
	</div>
	</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
	<%@include file="../head.jsp" %>
</head>
<body class="off-canvas-sidebar">
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="EasyPG_Admin/home.jsp">Easy-PG</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/EasyPG_Admin/home.jsp">
                        <i class="material-icons">dashboard</i>
                        <p class="hidden-lg hidden-md">Dashboard</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>


    <div class="wrapper wrapper-full-page">
        <div class="full-page register-page" filter-color="black" data-image="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/register.jpg">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="card card-signup">
                    <h2 class="card-title text-center">Register</h2>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="social text-center">
                                <button class="btn btn-just-icon btn-round btn-twitter">
                                    <i class="fa fa-twitter"></i>
                                </button>
                                <button class="btn btn-just-icon btn-round btn-google">
                                    <i class="fa fa-google"></i>
                                </button>
                                <button class="btn btn-just-icon btn-round btn-facebook">
                                    <i class="fa fa-facebook"> </i>
                                </button>
                                <h4> or be classical </h4>
                            </div>
                            <form class="form" method="" action="#">
                                <div class="card-content">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">face</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Username...">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Email...">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" placeholder="Password..." class="form-control" />
                                    </div>
                                    
									<div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" placeholder="Confirm Password..." class="form-control" />
                                    </div>

                                    <!-- If you want to add a checkbox to this form, uncomment this code -->

                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="optionsCheckboxes" checked>
                                            I agree to the <a href="#something">terms and conditions</a>.
                                        </label>
                                    </div>
                                </div>
                                <div class="footer text-center">
                                    <a href="#pablo" class="btn btn-primary btn-round">Get Started</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
    <div class="container">
        <nav class="pull-left">
            <ul>
                <li>
                    <div class="col-md-1 col-sm-1">
	                        <button class="btn btn-just-icon btn-simple btn-twitter">
	                            <i class="fa fa-twitter"></i>
	                        </button>
	                </div>
                </li>
                <li>
                    <div class="col-md-1 col-sm-1">
	                        <button class="btn btn-just-icon btn-simple btn-facebook">
	                            <i class="fa fa-facebook-square"> </i>
	                        </button>
	                </div>
                </li>
                <li>
                    <div class="col-md-1 col-sm-1">
	                        <button class="btn btn-just-icon btn-simple btn-google">
	                            <i class="fa fa-google"> </i>
	                </div>
                </li>
            </ul>
        </nav>
        <p class="copyright pull-right">
            &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com/">Easy-PG</a>, All Rights Reserved
        </p>
    </div>
</footer>

</div>

    </div>
</body>
	
    <!--   Core JS Files   -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/material.min.js" type="text/javascript"></script>
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

<!-- Library for adding dinamically elements -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/arrive.min.js" type="text/javascript"></script>

<!-- Forms Validations Plugin -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/moment.min.js"></script>

<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/chartist.min.js"></script>

<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.bootstrap-wizard.js"></script>

<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/bootstrap-notify.js"></script>

<!--   Sharrre Library    -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.sharrre.js"></script>

<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/bootstrap-datetimepicker.js"></script>

<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery-jvectormap.js"></script>

<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/nouislider.min.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1_8C5Xz9RpEeJSaJ3E_DeBv8i7j_p6Aw"></script>

<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.select-bootstrap.js"></script>

<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.datatables.js"></script>

<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/sweetalert2.js"></script>

<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jasny-bootstrap.min.js"></script>

<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/fullcalendar.min.js"></script>

<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.tagsinput.js"></script>

<!-- Material Dashboard javascript methods -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/material-dashboard98f3.js?v=1.3.0"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/EasyPG_Admin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/demo.js"></script>

<script>
// Facebook Pixel Code Don't Delete
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','connect.facebook.net/en_US/fbevents.js');

try{
  fbq('init', '111649226022273');
  fbq('track', "PageView");

}catch(err) {
  console.log('Facebook Track Error:', err);
}

</script>
<noscript>
  <img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1"
  />
</noscript>





    <script type="text/javascript">
        $().ready(function(){
            demo.checkFullPageBackgroundImage();

            setTimeout(function(){
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script>
</html>
    
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPage.aspx.cs" Inherits="FerrySystem.CustomerPage" %>

<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.3.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest (the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
    <meta charset="utf-8">
    <title>BCFerries</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content="Metronic Shop UI description" name="description">
    <meta content="Metronic Shop UI keywords" name="keywords">
    <meta content="keenthemes" name="author">
    <meta http-equiv="cleartype" content="on">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-">
    <!-- link to image for socio -->
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="img/logo/ferry_icon.svg">

    <!-- Fonts START -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Pathway+Gothic+One|PT+Sans+Narrow:400+700|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <!-- Fonts END -->

    <!-- Global styles BEGIN -->
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/slider-revolution-slider/rs-plugin/css/settings.css" rel="stylesheet">
    <!-- Global styles END -->

    <!-- Page level plugin styles BEGIN -->
    <link href="plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <!-- Page level plugin styles END -->

    <!-- Theme styles BEGIN -->
    <link href="css/components.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <link href="css/themes/blue.css" rel="stylesheet" id="style-color">
    <link href="css/custom.css" rel="stylesheet">

    <!-- Theme styles END -->
</head>
<!--DOC: menu-always-on-top class to the body element to set menu on top -->
<body>

    <!-- Header BEGIN -->
    <div class="header header-mobi-ext">
        <div class="container">
            <div class="row">
                <!-- Logo BEGIN -->
                <div class="col-md-2 col-sm-2">
                    <a class="scroll site-logo" href="#promo-block">
                        <img src="img/logo/Ferry_logo.png" alt="Metronic One Page"></a>
                </div>
                <!-- Logo END -->

                <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

                <!-- Navigation BEGIN -->
                <div class="col-md-10 pull-right">
                    <ul class="header-navigation">
                        <li class="current"><a href="#promo-block">Home</a></li>
                        <li><a href="#minereservationer">Mine reservationer</a></li>
                        <li><a href="#reserver">Reserver</a></li>
                        <li><a href="Index.aspx">Logud</a></li>
                    </ul>
                </div>
                <!-- Navigation END -->
            </div>
        </div>
    </div>
    <!-- Header END -->

        <!-- Promo block BEGIN -->
    <div class="promo-block" id="promo-block">
        <div class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                    <li data-transition="fade" data-slotamount="5" data-masterspeed="700" class="slider-item-1">
                        <img src="img/silder/scandlines_1.jpg" alt="" data-bgfit="cover" style="opacity: 0.4 !important;" data-bgposition="center center" data-bgrepeat="no-repeat">
                        <div class="tp-caption large_text customin customout start"
                            data-x="center"
                            data-hoffset="0"
                            data-y="center"
                            data-voffset="60"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="500"
                            data-easing="Back.easeInOut"
                            data-endspeed="300">
                            <div class="promo-like"><i class="fa fa-sign-in"></i></div>
                            <div class="promo-like-text">
                                <h2>Velkommen - du er logget ind</h2>
                                <p><%=firstname%> <%=lastname%><br>
                                    <span>Hos BCFerries har vi mange forskellige tilbud til dig, der vil besøge Ø(1) eller Ø(2).</span></p>                                   
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Promo block END -->

        <!-- mine reservationer block BEGIN -->
    <div class="about-block content content-center" id="minereservationer">
        <div class="container">
            <h2>Mine reservationer</h2>
            <h4>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</h4>

    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN TABLE PORTLET-->
            <div class="portlet">
                <div class="portlet-body">

                    <div class="table-responsive">
                        <table id="dataTable" class="table table-striped table-bordered table-hover dataTable">
                            <thead>
                                <tr>
                                    <th><i class="fa fa-calendar"></i>Dato:</th>
                                    <th><i class="fa fa-ship"></i>Fra:</th>
                                    <th><i class="fa fa-ship"></i>Til:</th>
                                    <th><i class="fa fa-user"></i>Antal personer</th>
                                    <th><i class="fa fa-credit-card"></i>Pris</th>
                                    <th><i class="fa fa-trash-o"></i>Slet</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal ID="tableOut" runat="server"></asp:Literal>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- END TABLE PORTLET-->
        </div>
    </div>
            </div>
        </div>>
    <!-- About block END -->

    <!-- Services block BEGIN -->
    <div class="services-block content content-center" id="services">
        <div class="container">
            <h2>Our <strong>services</strong></h2>
            <h4>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</h4>

            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-12 item">
                    <i class="fa fa-heart"></i>
                    <h3>Fantastic Support</h3>
                    <p>Lorem ipsum et dolor amet<br>
                        consectetuer diam</p>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12 item">
                    <i class="fa fa-mobile"></i>
                    <h3>Mobile Solutions</h3>
                    <p>Lorem ipsum et dolor amet<br>
                        consectetuer diam</p>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12 item">
                    <i class="fa fa-signal"></i>
                    <h3>Market Analysis</h3>
                    <p>Lorem ipsum et dolor amet<br>
                        consectetuer diam</p>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12 item">
                    <i class="fa fa-camera"></i>
                    <h3>Photography</h3>
                    <p>Lorem ipsum et dolor amet<br>
                        consectetuer diam</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Services block END -->

    <a href="#promo-block" class="go2top scroll"><i class="fa fa-arrow-up"></i></a>

    <!--[if lt IE 9]>
    <script src="../../assets/global/plugins/respond.min.js"></script>
  <![endif]-->

    <!-- Load JavaScripts at the bottom, because it will reduce page load time -->
    <!-- Core plugins BEGIN (For ALL pages) -->
    <script src="plugins/jquery.min.js" type="text/javascript"></script>
    <script src="plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Core plugins END (For ALL pages) -->

    <!-- BEGIN RevolutionSlider -->
    <script src="plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js" type="text/javascript"></script>
    <script src="plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js" type="text/javascript"></script>
    <script src="scripts/revo-ini.js" type="text/javascript"></script>
    <!-- END RevolutionSlider -->

    <!-- Core plugins BEGIN (required only for current page) -->
    <script src="plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
    <!-- pop up -->
    <script src="plugins/jquery.easing.js"></script>
    <script src="plugins/jquery.parallax.js"></script>
    <script src="plugins/jquery.scrollTo.min.js"></script>
    <script src="scripts/jquery.nav.js"></script>
    <!-- Core plugins END (required only for current page) -->

    <!-- Global js BEGIN -->
    <script src="scripts/layout.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            Layout.init();
        });
    </script>
    <!-- Global js END -->
</body>
</html>





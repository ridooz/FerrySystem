﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FerrySystem.Index" %>

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
                        <li><a href="#about">About</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#benefits">Benefits</a></li>
                        <li><a href="#prices">Pricing</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li>
                            <form>
                                <strong><a href="TestMaster.aspx" class="btn btn-circle blue" style="margin-top: -12px;">Eksempel <i class="fa fa-sign-in"></i></a></strong>
                            </form>
                        </li>

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
                            <div class="promo-like"><i class="fa fa-thumbs-up"></i></div>
                            <div class="promo-like-text">
                                <h2>Book din billet online - hurtigt og nemt</h2>
                                <p>Hos BCFerries har vi mange forskellige tilbud til dig, der vil besøge Ø(1) eller Ø(2).<br>
                                    <a href="#prices"><span>FIND REJSE</span></a></p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Promo block END -->

    <!-- About block BEGIN -->
    <div class="about-block content content-center" id="about">
        <div class="container">
            <h2><strong>Metronic</strong> Inspires</h2>
            <h4>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</h4>

            <div class="ab-trio">
                <img src="img/trio.png" alt="" class="img-responsive">
                <div class="ab-cirlce ab-cirle-blue">
                    <i class="fa fa-code"></i>
                    <strong>Clean Code</strong>
                </div>
                <div class="ab-cirlce ab-cirle-red">
                    <i class="fa fa-gift"></i>
                    <strong>Huge Updates</strong>
                </div>
                <div class="ab-cirlce ab-cirle-green">
                    <i class="fa fa-mobile"></i>
                    <strong>Responsive</strong>
                </div>
            </div>
        </div>
    </div>
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

    <!-- Message block BEGIN -->
    <div class="message-block content content-center valign-center" id="message-block">
        <div class="valign-center-elem">
            <h2>Der er noget ved at sejle med<strong><b>BCFerries</b></strong></h2>
        </div>
    </div>
    <!-- Message block END -->
  

    <!-- Choose us block BEGIN -->
    <div class="choose-us-block content text-center margin-bottom-40" id="benefits">
        <div class="container">
            <h2>Why to <strong>choose us</strong></h2>
            <h4>Lorem ipsum dolor sit amet, <a href="javascript:void(0);">consectetuer adipiscing</a> elit, sed diam nonummy<br>
                nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</h4>

            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                    <img src="img/choose-us.png" alt="Why to choose us" class="img-responsive">
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                    <div class="panel-group" id="accordion1">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_1">Lorem ipsum dolor sit amet</a>
                                </h5>
                            </div>
                            <div id="accordion1_1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam quis nostrud exercitation dolore magna ullamco.</p>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco sed eiusmod tempor ut labore et dolore.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_2">Consectetur adipisicing elit</a>
                                </h5>
                            </div>
                            <div id="accordion1_2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam quis nostrud exercitation dolore magna ullamco.</p>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco sed eiusmod tempor ut labore et dolore.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_3">Augue assum anteposuerit dolore</a>
                                </h5>
                            </div>
                            <div id="accordion1_3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam quis nostrud exercitation dolore magna ullamco.</p>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco sed eiusmod tempor ut labore et dolore.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_4">Sollemnes in futurum</a>
                                </h5>
                            </div>
                            <div id="accordion1_4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam quis nostrud exercitation dolore magna ullamco.</p>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco sed eiusmod tempor ut labore et dolore.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_5">Nostrud Tempor veniam</a>
                                </h5>
                            </div>
                            <div id="accordion1_5" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam quis nostrud exercitation dolore magna ullamco.</p>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco sed eiusmod tempor ut labore et dolore.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_6">Ut enem magana sed dolore</a>
                                </h5>
                            </div>
                            <div id="accordion1_6" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam quis nostrud exercitation dolore magna ullamco.</p>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco sed eiusmod tempor ut labore et dolore.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Choose us block END -->

    <!-- Prices block BEGIN -->
    <div class="prices-block content content-center" id="prices">
        <div class="container">
            <h2 class="margin-bottom-50"><strong>Pricing</strong> Tables</h2>
            <div class="row">
                <!-- Pricing item BEGIN -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="pricing-item">
                        <div class="pricing-head">
                            <h3>Beginner</h3>
                            <p>Lorem ipsum dolor</p>
                        </div>
                        <div class="pricing-content">
                            <div class="pi-price">
                                <strong>$<em>19</em></strong>
                                <p>Per Month</p>
                            </div>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a class="btn btn-default" href="javascript:void(0);">Sign Up</a>
                        </div>
                    </div>
                </div>
                <!-- Pricing item END -->
                <!-- Pricing item BEGIN -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="pricing-item">
                        <div class="pricing-head">
                            <h3>Pro</h3>
                            <p>Lorem ipsum dolor</p>
                        </div>
                        <div class="pricing-content">
                            <div class="pi-price">
                                <strong>$<em>25</em></strong>
                                <p>Per Month</p>
                            </div>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a class="btn btn-default" href="javascript:void(0);">Sign Up</a>
                        </div>
                    </div>
                </div>
                <!-- Pricing item END -->
                <!-- Pricing item BEGIN -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="pricing-item">
                        <div class="pricing-head">
                            <h3>Expert</h3>
                            <p>Lorem ipsum dolor</p>
                        </div>
                        <div class="pricing-content">
                            <div class="pi-price">
                                <strong>$<em>59</em></strong>
                                <p>Per Month</p>
                            </div>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a class="btn btn-default" href="javascript:void(0);">Sign Up</a>
                        </div>
                    </div>
                </div>
                <!-- Pricing item END -->
                <!-- Pricing item BEGIN -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="pricing-item">
                        <div class="pricing-head">
                            <h3>Hi-Tech</h3>
                            <p>Lorem ipsum dolor</p>
                        </div>
                        <div class="pricing-content">
                            <div class="pi-price">
                                <strong>$<em>98</em></strong>
                                <p>Per Month</p>
                            </div>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                                <li><i class="fa fa-circle"></i>Lorem ipsum dolor</li>
                            </ul>
                        </div>
                        <div class="pricing-footer">
                            <a class="btn btn-default" href="javascript:void(0);">Sign Up</a>
                        </div>
                    </div>
                </div>
                <!-- Pricing item END -->
            </div>
        </div>
    </div>
    <!-- Prices block END -->

    <!-- Testimonials block BEGIN -->
    <div class="testimonials-block content content-center margin-bottom-65">
        <div class="container">
            <h2>Customer <strong>testimonials</strong></h2>
            <h4>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</h4>

            <div class="carousel slide" data-ride="carousel" id="testimonials-block">
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <!-- Carousel items -->
                    <div class="active item">
                        <blockquote>
                            <p>This is the most awesome, full featured, easy, costomizeble theme. It’s extremely responsive and very helpful to all suggestions.</p>
                        </blockquote>
                        <span class="testimonials-name">Mark Doe</span>
                    </div>
                    <!-- Carousel items -->
                    <div class="item">
                        <blockquote>
                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.</p>
                        </blockquote>
                        <span class="testimonials-name">Joe Smith</span>
                    </div>
                    <!-- Carousel items -->
                    <div class="item">
                        <blockquote>
                            <p>Williamsburg carles vegan helvetica. Cosby sweater eu banh mi, qui irure terry richardson ex squid Aliquip placeat salvia cillum iphone.</p>
                        </blockquote>
                        <span class="testimonials-name">Linda Adams</span>
                    </div>
                </div>
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#testimonials-block" data-slide-to="0" class="active"></li>
                    <li data-target="#testimonials-block" data-slide-to="1"></li>
                    <li data-target="#testimonials-block" data-slide-to="2"></li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Testimonials block END -->

    <!-- BEGIN PRE-FOOTER -->
    <div class="pre-footer" id="contact">
        <div class="container">
            <div class="row">
                <!-- BEGIN BOTTOM ABOUT BLOCK -->
                <div class="col-md-4 col-sm-6 pre-footer-col">
                    <h2>About us</h2>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo consequat. </p>
                    <p>Duis autem vel eum iriure dolor vulputate velit esse molestie at dolore.</p>
                </div>
                <!-- END BOTTOM ABOUT BLOCK -->

                <!-- BEGIN TWITTER BLOCK -->
                <div class="col-md-4 col-sm-6 pre-footer-col">
                    <h2 class="margin-bottom-0">Latest Tweets</h2>
                    <a class="twitter-timeline" href="https://twitter.com/twitterapi" data-tweet-limit="2" data-theme="dark" data-link-color="#57C8EB" data-widget-id="455411516829736961" data-chrome="noheader nofooter noscrollbar noborders transparent">Loading tweets by @keenthemes...</a>
                </div>
                <!-- END TWITTER BLOCK -->

                <div class="col-md-4 col-sm-6 pre-footer-col">
                    <!-- BEGIN BOTTOM CONTACTS -->
                    <h2>Our Contacts</h2>
                    <address class="margin-bottom-20">
                        35, Lorem Lis Street, Park Ave<br>
                        California, US<br>
                        Phone: 300 323 3456<br>
                        Fax: 300 323 1456<br>
                        Email: <a href="mailto:info@metronic.com">info@metronic.com</a><br>
                        Skype: <a href="skype:metronic">metronic</a>
                    </address>
                    <!-- END BOTTOM CONTACTS -->

                    <div class="pre-footer-subscribe-box">
                        <h2>Newsletter</h2>
                        <form action="javascript:void(0);">
                            <div class="input-group">
                                <input type="text" placeholder="youremail@mail.com" class="form-control">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="submit">Subscribe</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PRE-FOOTER -->

    <!-- BEGIN FOOTER -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- BEGIN COPYRIGHT -->
                <div class="col-md-6 col-sm-6">
                    <div class="copyright">2015 © BCFerries - CustomerFrontEnd</div>
                </div>
                <!-- END COPYRIGHT -->
                <!-- BEGIN SOCIAL ICONS -->
                <div class="col-md-6 col-sm-6 pull-right">
                    <ul class="social-icons">
                        <li><a class="rss" data-original-title="rss" href="javascript:void(0);"></a></li>
                        <li><a class="facebook" data-original-title="facebook" href="javascript:void(0);"></a></li>
                        <li><a class="twitter" data-original-title="twitter" href="javascript:void(0);"></a></li>
                        <li><a class="googleplus" data-original-title="googleplus" href="javascript:void(0);"></a></li>
                        <li><a class="linkedin" data-original-title="linkedin" href="javascript:void(0);"></a></li>
                        <li><a class="youtube" data-original-title="youtube" href="javascript:void(0);"></a></li>
                        <li><a class="vimeo" data-original-title="vimeo" href="javascript:void(0);"></a></li>
                        <li><a class="skype" data-original-title="skype" href="javascript:void(0);"></a></li>
                    </ul>
                </div>
                <!-- END SOCIAL ICONS -->
            </div>
        </div>
    </div>
    <!-- END FOOTER -->

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




<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="FerrySystem.CreateCustomer" %>

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


    <div class="choose-us-block content text-center margin-bottom-40" id="benefits">
        <div class="container">
            <h2>Oprettelse af <strong>bruger</strong></h2>
            <h4>Ved oprettelse af bruger kan du til næste gang få hurtigere betjeningen gennem reservation. Er du allerede bruger, skal du logge ind og foretage en reservation</h4>



            <form runat="server">

                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <fieldset>


                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                                    <img src="img/bruger.png" alt="Why to choose us" class="img-responsive">
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                                    <div class="form-body">
                                        <div class="form-group">

                                            <div class="col-md-9">
                                                <input type="text" name="Fornavn" id="Fornavn" class="form-control" placeholder="Fornavn" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-md-9">
                                                <input type="text" name="Efternavn" id="Efternavn" class="form-control" placeholder="Efternavn" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-md-9">
                                                <input type="text" name="Email" id="Email" class="form-control" placeholder="E-mail" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-md-9">
                                                <input type="password" name="Password" id="Password" class="form-control" placeholder="Password" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-md-6">
                                                <input type="text" name="Adresse" id="Adresse" class="form-control" placeholder="Adresse" runat="server" />
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" name="Husnr" id="Husnr" class="form-control" placeholder="Husnr" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <input type="text" name="By" id="By" class="form-control" placeholder="By" runat="server" />
                                            </div>
                                            <div class="col-md-3">
                                                <input type="number" name="Postnr" id="Postnr" class="form-control" placeholder="Postnr" runat="server" />
                                            </div>
                                        </div>
                                        <div class="checkout-form-row">
                                            <div class="col-md-5">
                                                <input type="text" name="Telefonnr" id="Telefonnr" class="form-control" placeholder="Telefonnr" runat="server" />
                                            </div>
                                            <div class="col-md-4">
                                                Native 
                            <select data-container="body" class="bs-select form-control" name="native" id="native" runat="server" multiple="false"></select>
                                            </div>
                                        </div>

                                        <div class="form-group">

                                            <div class="col-md-6">
                                                <input type="text" name="Adresse" id="AdresseNative" class="form-control" placeholder="Adresse" runat="server" style="display: none" />
                                            </div>
                                            <div class="col-md-3">
                                                <input type="number" name="Husnr" id="HusnrNative" class="form-control" placeholder="Husnr" runat="server" style="display: none" />
                                            </div>
                                        </div>

                                        <div class="form-actions fluid">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="col-md-offset-3 col-md-9">
                                                        <asp:LinkButton ID="LinkButton5" CssClass="btn green" runat="server" OnClick="CreateCustomerButton_Click"><i class="fa fa-check"></i> Opret</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>





                        </fieldset>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </form>



        </div>
    </div>

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




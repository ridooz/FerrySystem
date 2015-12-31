<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchTravel.aspx.cs" Inherits="FerrySystem.SearchTravel" %>

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

    <%if (Request.QueryString["command"] != null)
      {
          if (Request.QueryString["command"] == "reserveTrip")
          {
    %>

    <!-- ReserveTrip block BEGIN -->

    <div class="about-block content content-center" id="about">
        <div class="container">
            <h2><strong>Reserver</strong> Rejse</h2>
            <h4>Ønsker du at reserver en rejse, skal du udfylde nedenstående informationer og fortsætte</h4>

            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                    </div>
                </div>
                <div class="portlet-body form" style="">
                    <form runat="server">

                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <fieldset>

                                    <div class="form-horizontal form-bordered form-row-stripped">
                                        <!-- BEGIN FORM-->
                                        <div class="form-body">

                                            <div class="form-group">
                                                <label class="control-label col-md-3">Antal rejsende i alt</label>
                                                <div class="col-md-9">
                                                    <select data-container="body" class="bs-select form-control" name="travelers" id="travelers" runat="server" multiple="false"></select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Tilføj eventuel køretøj</label>
                                                <div class="col-md-9">
                                                    <select data-container="body" class="bs-select form-control" name="vehicle" id="vehicle" runat="server" multiple="false"></select>
                                                </div>
                                            </div>


                                            <div class="form-actions fluid">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="col-md-offset-3 col-md-9">


                                                            <asp:LinkButton ID="btnContinue" CssClass="btn green" runat="server" OnClick="ContinueButton_Click"><i class="fa fa-check"></i> Videre til reservation</asp:LinkButton>

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

        </div>
    </div>
    <!-- ReserveTrip block END -->


    <%}
          else
              if (Request.QueryString["command"] == "reservationCreated")
              {
    %>

    <div class="about-block content content-center" id="about">
        <div class="container">
            <h2><strong>Reservation</strong> Oprettet</h2>
            <h4>Din reservation med id <%=Request.QueryString["reservationId"].ToString()%> er nu oprettet og er synlig i dit oversigt over reservationer</h4>
        </div>
    </div>


    <%
          }

      }
      else
      { %>

    <!-- About block BEGIN -->
    <div class="about-block content content-center" id="about">
        <div class="container">
            <h2><strong>Ledige</strong> Rejser</h2>
            <h4>Ønsker du at booke en ledig rejse, skal du vælge en rejse fra listen</h4>

            <div class="portlet box yellow">
                <div class="portlet-title">
                    <div class="caption">
                    </div>
                </div>
                <div class="portlet-body" style="">
                    <div class="table-responsive">
                        <table id="dataTable" class="table table-striped table-bordered table-hover dataTable">
                            <thead>
                                <tr>
                                    <th><i class="fa fa-user"></i>Afgang</th>
                                    <th><i class="fa fa-user"></i>Destination</th>
                                    <th><i class="fa fa-user"></i>Dato for afrejse</th>
                                    <th><i class="fa fa-user"></i>Rejsetid</th>
                                    <th><i class="fa fa-user"></i>Turpris</th>
                                    <th><i class="fa fa-user"></i>Handlinger</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal ID="tableOut" runat="server"></asp:Literal>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- About block END -->
    <%} %>

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




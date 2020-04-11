<!DOCTYPE html>
<html>
    <head>
        <title>Blood Bank</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>

        <link href="css/carouseller.css" rel="stylesheet" type="text/css"/>
        <script src="js/carouseller.js" type="text/javascript"></script>
        <script src="js/carouseller.min.js" type="text/javascript"></script>

        <script type="text/javascript">

            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
    </head>
    
    <!-- //new -->
        <!-- //footer -->
        <div class="footer">
            <div class="container">
                <div class="w3_footer_grids">
                    <div class="col-md-4 w3_footer_grid">
                        <h3>Contact</h3>

                        <ul class="address">
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Medi-Caps University, Pigdamber, Indore</li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">blood.bank280160@gmail.com</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>08349783108</li>
                        </ul>
                    </div>
                    <div class="col-md-4 w3_footer_grid">
                        <h3>Information</h3>
                        <ul class="info"> 
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="home_about.jsp">About Us</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="home_contact.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 w3_footer_grid">
                        <h3>Profile</h3>
                        <ul class="info"> 
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="cus_logout.jsp">logout</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="cus_registered.jsp">Edit Profile</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <div class="footer-copy">

                <div class="container">
                    <p>&copy; 2020 Blood Bank. All rights reserved </p>
                </div>
            </div>

        </div>	
        <div class="footer-botm">
            <div class="container">
                <div class="w3layouts-foot">
                    <ul>
                        <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="payment-w3ls">	
                    <img src="images/card.png" alt=" " class="img-responsive">
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //footer -->	
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- top-header and slider -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //here ends scrolling icon -->
        <script src="js/minicart.min.js"></script>
        <script>
// Mini Cart
            paypal.minicart.render({
                action: '#'
            });

            if (~window.location.search.indexOf('reset=true')) {
                paypal.minicart.reset();
            }
        </script>
        <!-- main slider-banner -->
        <script src="js/skdslider.min.js"></script>
        <link href="css/skdslider.css" rel="stylesheet">
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery('#demo1').skdslider({'delay': 5000, 'animationSpeed': 2000, 'showNextPrev': true, 'showPlayButton': true, 'autoSlide': true, 'animationType': 'fading'});

                jQuery('#responsive').change(function () {
                    $('#responsive_wrapper').width(jQuery(this).val());
                });

            });
        </script>	
        <!-- //main slider-banner --> 
    </body>
</html>
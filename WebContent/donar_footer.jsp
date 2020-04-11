
        <!-- //footer -->
        <div class="footer">
            <div class="container">
                <div class="w3_footer_grids">
                    <div class="col-md-4 w3_footer_grid">
                        <h3>Contact</h3>

                        <ul class="address">
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Medi-Caps University, Pigdamber, Indore</li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">blood.bank280160@gmamil.com</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>08349783108</li>
                        </ul>
                    </div>
                    <div class="col-md-4 w3_footer_grid">
                        <h3>Information</h3>
                        <ul class="info"> 
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="admin_about.jsp">About Us</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="seller_contact.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 w3_footer_grid">
                        <h3>Profile</h3>
                        <ul class="info"> 
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="logout.jsp">logout</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="donar_registered.jsp">Edit Profile</a></li>
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
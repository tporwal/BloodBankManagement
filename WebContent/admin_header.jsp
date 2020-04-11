
<!DOCTYPE html>
<html>
    <head>
        <title>Blood Bank Management</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="xyz" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>

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
        <!--          datatable-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">





        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <body>
        <!-- header --> 
        <div class="agileits_header">
            <div class="container">
                <div class="w3l_offers">
                    <p>WELCOME TO BLOOD BANK MANAGEMENT !!!</p>
                </div>
                <div class="agile-login">
                    <ul>
                        <li><a><%=session.getAttribute("admin")%></a></li>
                        <li><a href="logout.jsp">Logout</a></li>


                    </ul>
                </div>
               
                <div class="clearfix"> </div>
            </div>
        </div>

        
            <div class="container">
                <div class="w3ls_logo_products_left1">
                    <ul class="phone_email">
                        <li><a href="admin.jsp"><img src="images/blood-bank-1.jpg"height="80px;" width="200px;"></a>
                    </ul>
                </div>
                <div class="row">
                    <div class="w3l_search">

                    </div>
                </div>

                <div class="clearfix"> </div>
            

        </div>
       
        <br>


    
    </body>
<jsp:include page="admin_menu.jsp" /> 
              






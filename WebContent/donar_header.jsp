
<!DOCTYPE html>
<html>
    <head>
        <title>Blood Bank</title>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
      
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet"> 
        
        <script src="js/jquery-1.11.1.min.js"></script>
        
        <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        
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

    <body >
        <!-- header -->
        <div class="agileits_header">
            <div class="container">
                <div class="w3l_offers">
                    <p>WELCOME TO BLOOD BANK MANAGEMENT !!!</p>
                </div>
                <div class="agile-login" style="margin-left:100px;">
                    <ul>
                        <li><a><%=session.getAttribute("donar")%></a></li>
                        <li><a href="logout.jsp">Logout</a></li>


                    </ul>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="logo_products">
            <div class="container">
                <div class="w3ls_logo_products_left1">
                    <ul class="phone_email">
                        <li><a href="admin.jsp"><img src="images/blood-bank-1.jpg"height="150px;" width="300px;"></a>
                    </ul>
                </div>
                <div class="row">
                    <div class="w3l_search">


                     
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>

        </div>
        
      <!--   <jsp:include page="donar_menu.jsp"/> -->





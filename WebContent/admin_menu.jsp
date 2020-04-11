<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Menu</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-inverse" style=" color: white;" >
            <div class="container">
                <ul class="nav navbar-nav">
                    <li><a href="admin.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>	
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Employee <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="admin_view_employee.jsp">View Employee Details</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Donar <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="admin_view_donar.jsp">Approve/View Donar</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Acceptor <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="admin_view_acceptor.jsp">View Acceptor</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Stock<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="admin_view_stock.jsp">View Stock</a></li>
                        </ul>
                    </li>
                     <li><a href="donar_donate_form.jsp"><span class="glyphicon glyphicon-acp"></span>&nbsp;Donate Blood</a></li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Profile <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="admin_changePassword.jsp">Change password</a></li>
                        </ul>
                    </li>    

                </ul>
            </div>
        </nav>


    </body>
</html>

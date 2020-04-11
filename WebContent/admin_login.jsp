<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.AdminDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Organization Login</title>
</head>
<body>
<jsp:include page="admin_header_1.jsp"/>
<!-- //navigation -->     
<div class="breadcrumbs"> <h2 STYLE="text-align: center">Organization LOGIN</h2></div>

        <!-- login -->
        <div class="login">
            <div class="container">
              
                <div class="login-form-grids">
                    <form method="post" action="admin_login_db.jsp">
                        <input type="email" placeholder="Email Address" name="id" required="" >
                        <input type="password" placeholder="Password" name="password" required="" >
                        <div class="forgot">
                            <a href="admin_forgetpassword.jsp">Forgot Password?</a>
                        </div>
                      

                        <input type="submit" value="Login" >
                    </form>
                </div>


            </div>
        </div>
        <!-- //login -->


</body>
</html>
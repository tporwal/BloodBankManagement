<jsp:include page="donar_header_1.jsp"/>

<!-- login -->
	<div class="login">
		<div class="container">
			<h2>Donar LogIn</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <form method="post" action="donar_login_db.jsp">
					<input type="email" placeholder="Email Address" name="emailid" required=" " >
					<input type="password" placeholder="Password" name="password" required=" " >
					<div class="forgot">
						<a href="donar_forgetpassword.jsp">Forgot Password</a>
					</div>
					<input type="submit" value="Login">
				</form>
			</div>
                        
                        
			<h4>For New Donars</h4>
			<p><a href="donar_registered.jsp">Register Here</a> (Or) go back to <a href="index.jsp">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->

<jsp:include page="donar_footer.jsp" />
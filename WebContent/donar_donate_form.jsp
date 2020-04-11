<jsp:include page="admin_header.jsp"/>

<div class="register">
    <div class="container">
        <h2>Blood Donation Details</h2>
        <div class="login-form-grids">

            <h5>Donation information</h5>
            <p>Please enter the Blood Group ID according to your Blood Group.</p>
            <ul style="list-style-type:disc;">
  			<li>1 for A+</li>
  			<li>2 for A-</li>
 			<li>3 for B+</li>
 			<li>4 for B-</li>
 			<li>5 for AB+</li>
 			<li>6 for AB-</li>
 			<li>7 for O+</li>
 			<li>8 for O-</li>
			</ul>

            <form action="donar_donate.jsp" method="post">
            	
            <input type="text" placeholder="Enter Blood Id" name="bloodid" required=" " >
            	
                
                

                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </form>
        </div>
        <div class="register-home">
            <a href="index.jsp">Home</a>
        </div>
    </div>
</div>
<!-- //register -->
<!-- //footer -->
<jsp:include page="admin_footer.jsp"/>

	<input type="checkbox" name="bloodid" value="1"> A-
            	
           		<input type="checkbox" name="bloodid" value="2"> AB-
            	<input type="checkbox" name="bloodid" value="3"> O-
            	<input type="checkbox" name="bloodid" value="4"> A+
            	<input type="checkbox" name="bloodid" value="5"> AB+
            	<input type="checkbox" name="bloodid" value="6"> B+
				<input type="checkbox" name="bloodid" value="7"> O+
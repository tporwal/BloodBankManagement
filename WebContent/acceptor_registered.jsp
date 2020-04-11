<jsp:include page="index_header.jsp"/>

<div class="register">
    <div class="container">
        <h2>Blood Acceptor Form</h2>
        <div class="login-form-grids">

            <h5>Please fill the details below</h5>
			<form method="post" action="acceptor_update_stock.jsp">
                    
                    	<input type="text" placeholder="Patient First Name" name="first_name" required="" >
                    	<input type="text" placeholder="Patient Last Name" name="last_name" required="" >
                    	<input type="int" placeholder="Patient Age" name="age" required="" >
                    	<input type="text" placeholder="Gender" name="gender" required="" >
                    	<input type="text" placeholder="Mobile No." name="mobile_no" required="" >
                        <input type="email" placeholder="Email Address" name="emailid"  >
                        <input type="text" placeholder="Address" name="address" required="" >
                        <input type="text" placeholder="Referred By" name="referred_by" >
                        <input type="text" placeholder="Blood Group" name="blood_group" required="" > 
                        <input type="text" placeholder="Date Of Birth" name="d_o_b" required="" > 
                       	<input type="int" placeholder="Unit Required" name="unit_required" required="" >               
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </form>
        </div>
        <div class="register-home">
            <a href="index.jsp">Home</a>
        </div>
    </div>
</div>
<jsp:include page="index_footer.jsp"/>
<jsp:include page="index_header.jsp"/>

<div class="register">
    <div class="container">
        <h2>Donar Register Here</h2>
        <div class="login-form-grids">

            <h5>Login information</h5>


            <form action="donar_register_db.jsp" method="post">
                <input type="email" placeholder="Enter Email.." name="emailid" required=" " >
                <input type="password" placeholder="Enter Password.." name="password" required=" " >

                <h6>profile information</h6>

                <input type="text" placeholder="Enter First Name.." name="first_name" required=" " >
                <input type="text" placeholder="Enter Last Name.." name="last_name" required=" " >
                <input type="text" placeholder="Enter MobileNumber.." name="mobile_no" required=" " >
                <input type="text" placeholder="Enter Gender.." name="gender" required=" " >
                <input type="int" placeholder="Enter Age.." name="age" required=" " >
                <input type="text" placeholder="Enter Address.." name="address" required=" " >
                <input type="text" placeholder="Enter Blood Group.." name="bloodGroup" required=" " >
                <input type="text" placeholder="Enter DateOfBirth.." name="d_o_b" required=" " >
                

                <input type="submit" value="Register">
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
<jsp:include page="index_footer.jsp"/>
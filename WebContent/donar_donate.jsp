
<%@page import="com.dao.BloodGroupDAO"%>

<jsp:useBean id="obj" class="com.dto.BloodGroup" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<html>
<body>
      <%
      	String pr = request.getParameter("bloodid");
		int bid = Integer.parseInt(pr);
        BloodGroupDAO reg = new BloodGroupDAO();
        boolean b = reg.updateStock(bid);
        if (b) 
        {
           out.print("Thanks for donating.");
           %>
           <%
            
        } else {
        }
           
    
    %>
    </body>
    </html>
<jsp:include page="donar_donate_form.jsp" />
				
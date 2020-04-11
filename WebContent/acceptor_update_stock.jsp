
<%@page import="com.dao.BloodGroupDAO"%>
<%@page import="com.dao.AcceptorDAO"%>
<jsp:useBean id="obj1" class="com.dto.Acceptor" scope="page"></jsp:useBean>
<jsp:setProperty name="obj1" property="*"></jsp:setProperty>
<jsp:useBean id="obj" class="com.dto.BloodGroup" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<html>
<body>
      <%
      	String pr = request.getParameter("blood_group");
		String pi = request.getParameter("unit_required");
		int stock = Integer.parseInt(pi);
		AcceptorDAO acp = new AcceptorDAO();
		acp.registerAcceptor(obj1);
        BloodGroupDAO reg = new BloodGroupDAO();
        boolean b = reg.updateStockFromAcceptor(pr,stock);
        if (b) 
        {
           out.print("We are always their to help you.");
           %>
           <%
            
        } else {
        }
           
    
    %>
    </body>
    </html>
    
<jsp:include page="acceptor_registered.jsp"/>
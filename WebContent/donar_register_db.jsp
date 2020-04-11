
<%@page import="com.dao.DonarDAO"%>

<jsp:useBean id="obj" class="com.dto.Donar" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

    <%
        DonarDAO reg = new DonarDAO();
        boolean b = reg.registerDonar(obj);
        if (b) 
        {
           out.print("Verification link has been sent on your email.");
           //<a href="donar_login.jsp">LOGIN</a>;
           %>
             <jsp:include page="index.jsp"/>
           <%
            
        } else {
             out.print("Your email is incorrect please check your email.");
        }
           
    
    %>
    
    
    
</body>
</html>

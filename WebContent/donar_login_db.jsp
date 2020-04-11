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
        boolean b = reg.checkDonarCredentials(obj);
        if (b) 
        { 
            session.setAttribute("donar",obj.getEmailid());
            RequestDispatcher rd = request.getRequestDispatcher("donar.jsp");
            rd.forward(request, response);
        } 
        else 
        {
             RequestDispatcher rd = request.getRequestDispatcher("donar_login.jsp");
            rd.include(request, response);
        }
            
           
       
       
        
    %>
</body>
</html>


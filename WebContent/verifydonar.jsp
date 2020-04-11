<%@page import="com.dao.DonarDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verification JSP Page</title>
    </head>
    <body>
         <% 
                String donarid=request.getParameter("donarid");
                       DonarDAO reg=new DonarDAO();
                     
            boolean b = reg.verifyDonar(donarid);
              if(b)
              {
 		%>
 			<h3>Donar Verified Successfully. Please click here to login.</h3><a href="donar_login.jsp">LogIn</a>
 		<%          
              }
              else
              {
         %>
          <h3>Verification failed..</h3><a href="donar_login.jsp">LogIn</a>
         <%
        
              }
       %>
       
    
    </body>
</html>

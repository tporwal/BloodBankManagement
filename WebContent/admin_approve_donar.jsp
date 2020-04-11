<%@page import="com.dao.DonarDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>Approval JSP Page</title>
    </head>
    <body>
        <%
          
          String donarid = request.getParameter("id");
         
			DonarDAO sd = new DonarDAO();
          
          boolean b = sd.approveDonar(donarid);
          
          if(b){
                 %>
        <script>
            swal("Welcome!", "Donar Approved Successfully!", "success");
            
           
        </script>
        <jsp:include page="admin_view_donar.jsp"/>
        <%
          }
        %>    
    </body>
</html>

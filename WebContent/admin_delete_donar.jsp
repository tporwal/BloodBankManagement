<%@page import="com.dao.DonarDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

      
    </head>
    <body>
      
      <% 
          
        String id=request.getParameter("emailid");
        DonarDAO dao=new DonarDAO();
             boolean i= dao.deleteDonar(id);
             if(i){
             %>
        <script>
             swal("Welcome!", "Donar Deleteed Successfully!", "success");
        </script>
        <jsp:include page="admin_view_donar.jsp"/>
        <%  
             
             }
        %>
     
    </body>
</html>

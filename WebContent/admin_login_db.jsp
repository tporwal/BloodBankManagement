<%@page import="com.dao.AdminDAO"%>
<jsp:useBean id="obj" class="com.dto.Admin" scope="page"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</head>
<body>


    <%

        AdminDAO reg = new AdminDAO();
        boolean b = reg.checkUser(obj);
        if (b) 
        {
            session.setAttribute("admin", obj.getEmailId());
           
    %>
    <script>
        swal("Welcome!", "Logged in Successfully!", "success");
    </script>
    <jsp:include page="admin.jsp"/>
    <%
    } else {
    %>
    <script>
        swal("please try again later !", "error");
    </script>
    <jsp:include page="admin_login.jsp"/>
    <%
        }


    %>
</body>
</html>

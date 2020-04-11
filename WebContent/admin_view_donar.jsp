<%@page import="com.dao.DonarDAO"%>
<%@page import="com.dto.Donar"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />

<html>
</head>
<body>
    <div class="container-fluid">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2> Registered <b>Donar List</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Emailid</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>MobileNo</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>Blood Group</th>
                        <th>Date Of Birth</th>
                       <th>Approved </th>

                    </tr>
                </thead>
                <tbody>
                    <% try {
                            DonarDAO dao = new DonarDAO();
                            ArrayList<Donar> lst = dao.getAllDonar();

                            for (Donar d : lst) {

                    %>

                    <tr>

                        <td><%=d.getEmailid()%></td>
                        <td><%=d.getFirst_name()%></td>
                         <td><%=d.getLast_name()%></td>
                        <td><%=d.getMobile_no()%></td>
                        <td><%=d.getGender()%></td>
                        <td><%=d.getAge()%></td>
                        <td><%=d.getAddress()%></td>
                        <td><%=d.getBloodGroup() %></td>
                        <td><%=d.getD_o_b() %></td>
                        <td><%  if (!d.isApproved())
                        {%>
                            <a href="admin_approve_donar.jsp?id=<%=d.getEmailid()%>" name="btnApprove" class="edit" data-toggle="modal" onclick="myclick1()"><img title="Approve" style="height: 20px; width: 30px; padding-right: 10px;"  src="images/22.png"></a>
                            <a href="admin_delete_donar.jsp?id=<%=d.getEmailid()%>" class="delete" name="btnApprove"  data-toggle="modal" onclick="myclick()"><img title="Reject"style="height: 30px; width: 30px;"  src="images/33.png"></a>
                        </td>
                        <%}%>
                    </tr>
                <script>
                    function myclick()
                    {
                        swal({
                            title: "Are you sure?",
                            text: "Your will not be able to recover this data!",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonClass: "btn-danger",
                            confirmButtonText: "Yes, delete it!",
                            closeOnConfirm: false
                        },
                                function () {
                                    swal("Deleted!", "You are not verified", "Fail");
                                });

                    }
                    function myclick1()
                    {
                        swal({
                            title: "Are you sure?",
                            text: "Your will not be able to recover this data!",
                            type: "success",
                            showCancelButton: true,
                            confirmButtonClass: "btn-success",
                            confirmButtonText: "Yes, verify it!",
                            closeOnConfirm: false
                        },
                                function () {
                                    swal("Verifed", "Donar verify Successfully", "success");
                                });

                    }
                </script>






                <%
                        }
                    } catch (Exception ex)
                    {
						ex.printStackTrace();
                    }
                %>




                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>2</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
   </html>
    <jsp:include page="admin_footer.jsp" />
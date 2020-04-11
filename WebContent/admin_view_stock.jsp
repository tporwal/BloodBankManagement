<%@page import="com.dao.BloodGroupDAO"%>
<%@page import="com.dto.BloodGroup"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />


</script>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2> Blood Group Bottle <b>Stock</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Blood Group Id</th>
                        <th>Blood Group</th>
                        <th>Unit Count</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            BloodGroupDAO dao = new BloodGroupDAO();
                            ArrayList<BloodGroup> lst = dao.getAllStock();

                            for (BloodGroup b : lst) {

                    %>

                    <tr>
                        <td><%=b.getBid()%></td>
                        <td><%=b.getBloodGroup()%></td>
                        <td><%=b.getUnitCount()%></td>
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
                <div class="hint-text">Showing <b>8</b> out of <b>25</b> entries</div>
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
   
    <jsp:include page="admin_footer.jsp" />
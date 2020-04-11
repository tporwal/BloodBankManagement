<%@page import="com.dao.AcceptorDAO"%>
<%@page import="com.dto.Acceptor"%>
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
                    <div class="col-sm-4">
                        <h2> Acceptor <b>Details</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Mobile No.</th>
                        <th>Address</th>
                        <th>Referred By</th>
                        <th>Blood Group</th>
                        <th>Date Of Birth</th>
                        <th>Email Id</th>
                        <th>Unit Required</th>

                    </tr>
                </thead>
                <tbody>
                    <% try {
                            AcceptorDAO dao = new AcceptorDAO();
                            ArrayList<Acceptor> lst = dao.getAllAcceptorDetails();

                            for (Acceptor apt : lst) {

                    %>

                    <tr>

                        <td><%=apt.getId()%></td>
                        <td><%=apt.getFirst_name()%></td>
                         <td><%=apt.getLast_name()%></td>
                        <td><%=apt.getAge()%></td>
                         <td><%=apt.getGender()%></td>
                        <td><%=apt.getMobile_no()%></td>
                        <td><%=apt.getAddress()%></td>
                        <td><%=apt.getReferred_by() %></td>
                        <td><%=apt.getBlood_group() %></td>
                        <td><%=apt.getD_o_b() %></td>
                        <td><%=apt.getEmailid() %></td>
                        <td><%=apt.getUnit_required() %></td>
                       
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
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
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
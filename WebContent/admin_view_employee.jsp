<%@page import="com.dao.EmployeeDAO"%>
<%@page import="com.dto.Employee"%>
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
                        <h2> Employee <b>Working In An Organization</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover container">
                <thead>
                    <tr>
                        <th>Employee ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email Id</th>
                        <th>Mobile No.</th>
                        <th>Date Of Joining</th>
                        <th>Salary</th>
                        <th>Post</th>
                        <th>Address</th>
                        <th>Age</th>
                        <th>Date Of Birth</th>

                    </tr>
                </thead>
                <tbody>
                    <% try {
                            EmployeeDAO dao = new EmployeeDAO();
                            ArrayList<Employee> lst = dao.getAllEmployeeDetails();

                            for (Employee emp : lst) {

                    %>

                    <tr>

                        <td><%=emp.getEmpid()%></td>
                        <td><%=emp.getFirst_name()%></td>
                        <td><%=emp.getLast_name()%></td>
                         <td><%=emp.getEmailid()%></td>
                        <td><%=emp.getMobile_no()%></td>
                        <td><%=emp.getDate_of_joining()%></td>
                        <td><%=emp.getSalary() %></td>
                        <td><%=emp.getPost() %></td>
                        <td><%=emp.getAddress() %></td>
                        <td><%=emp.getAge() %></td>
                        <td><%=emp.getD_o_b() %></td>
                       
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
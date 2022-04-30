<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page import="com.lorenzo.services.Semployee"%>
<%@page import="com.lorenzo.model.Employee"%>
<%@page import="com.lorenzo.interfaces.Iemployee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title> Employee Table - lorenzo</title>
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Article-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
</head>

<body id="page-top">
<%Iemployee employeeService = new Semployee();
                       	 ArrayList<Employee> employeeList = employeeService.getEmployeeList();
                       %>
    <div id="wrapper">
    <jsp:include page="header.jsp"/>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                  <jsp:include page="title.jsp"/>
                <h3 class="text-dark mb-4" style="margin-left: 26px;">Employee management</h3>
                 <div class="row">
                        <div class="col"><a href="employeeRegister.jsp"><button class="btn btn-primary" type="button" style="margin-bottom: 29px;">Register New Employee</button></a><button class="btn btn-primary" type="button" style="margin-bottom: 29px;margin-left: 11px;">Generate Report</button></div>
                    </div>
                    
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 fw-bold">All Employees</p>
                        </div>
                         
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>E-Mail</th>
                                            <th>Address</th>
                                            <th>Telephone</th>
                                            <th>Age</th>
                                            <th>User Name</th>
                                            <th>Option</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <% for(Employee employee : employeeList){ %>
                                        <tr>
                                            <td style="color: var(--bs-danger);"><%=employee.getId() %></td>
                                            <td><%=employee.getName() %></td>
                                            <td><%=employee.getMail() %></td>
                                            <td><%=employee.getAddress() %></td>
                                            <td><%=employee.getTelephone() %></td>
                                            <td><%=employee.getAge() %></td>
                                            <td><%=employee.getUserName() %></td>0
                                            <td>
                                                 <div class="row">
                                                        <div class="col" style="width: 20px;padding-left: 0px;padding-right: 0px;height: 36px;margin-right: -74px;">
                                                       		 <a href="employeeUpdate.jsp?id=<%=employee.getId() %>" class="btn-sm btn-secondary" style="cursor: pointer;"><i class="fa fa-pencil"></i></a>
												        </div>
                                                        <div class="col" style="width: 57.6px;padding-right: 0px;padding-left: 2px;margin-left: 22px;">
                                                        	 <a  href="deleteEmployee?id=<%=employee.getId() %>" class="btn-sm btn-secondary bg-danger" style="color:white;"><i class="fa fa-trash"></i></a>
														</div>
                                                    </div>
                                            </td>
                                        </tr>
                                        <%} %>
                                    </tbody>
                                    <tfoot>
                                        <tr></tr>
                                    </tfoot>
                                </table>
                            </div> </div>
                    </div>
                </div>
                
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Lorenzo 2022</span>
                    <br><span>Lorenzorentacar@gmail.com</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
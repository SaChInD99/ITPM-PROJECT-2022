 <%@page import="java.util.List"%>
<%@page import="com.lorenzo.vehicle_retun.VehicleReturn"%>
<%@page import="com.lorenzo.vehicle_retun.VehicleReturnImp"%>
<%@page import="com.lorenzo.vehicle_retun.IVehicleReturn"%>
<%@page import="java.util.ArrayList"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Vehicle Return - Lorenzo</title>
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jpg">
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
    <div id="wrapper">
       <jsp:include page="header.jsp"/>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                  <jsp:include page="title.jsp"/>
                <h3 class="text-dark mb-4" style="background: red;" "margin-left: 25px;" >Vehicle Return Management</h3>
                 
                <%
                 IVehicleReturn service = new VehicleReturnImp();
                 List<VehicleReturn> returnList = service.listVehicleReturn();
                %>
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header py-3"> 
                        	<div class="row">
                        		<div class="col"><a href="addVehicleReturn.jsp"><button class="btn btn-primary" type="button" style="margin-bottom: 29px; background: Red;">Add Vehicle Return Details</button></a> <a href="report/vehicleRetrnReport.jsp"><button class="btn btn-primary" type="button" style="margin-bottom: 11px; background: #ed1c24;">Generate Report</button> </a></div>
                    		</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                    
                                        <tr>
                                            <th>ID</th>
                                            <th>Vehicle number</th>
                                            <th>Customer Name</th>
                                            <th>Customer e-mail</th>
                                            <th>Customer contact</th>
                                            <th>Pickup date</th>
                                            <th>Return date</th>
                                            <th>Return time</th>
                                            <th>Vehicle type</th>
                                            <th>Service type</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(VehicleReturn vehicle :returnList){ %>
                                        <tr>
                                            <td style="color: var(--bs-danger);"><%=vehicle.getId() %></td>
                                            <td><%=vehicle.getVehicleNumber() %></td>
                                            <td><%=vehicle.getCusName() %></td>
                                            <td><%=vehicle.getEmail() %></td>
                                            <td><%=vehicle.getContact() %></td>
                                            <td><%=vehicle.getPickupDate() %></td>
                                            <td><%=vehicle.getReturnDate() %></td>
                                            <td><%=vehicle.getReturnTime()%></td>
                                            <td><%=vehicle.getVehicleType()%></td>
                                            <td><%=vehicle.getServiceType() %></td>
                                            <td>
                                                <div>
                                                    <div class="row">
                                                        <div class="col" style="width: 20px;padding-left: 0px;padding-right: 0px;height: 36px;margin-right: -74px;">
                                                       		 <a href="updateVehicleReturn.jsp?id=<%=vehicle.getId()%>" class="btn-sm btn-secondary" style="cursor: pointer;"><i class="fa fa-pencil"></i></a>
												        </div>
                                                        <div class="col" style="width: 57.6px;padding-right: 0px;padding-left: 0px;margin-left: 35px;">
                                                        	 <a href="deleteVehicleReturn?id=<%=vehicle.getId()%>" class="btn-sm btn-secondary bg-danger" style="color:white;"><i class="fa fa-trash"></i></a>
														</div>
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
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Lorenzo 2021</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="font-size: 24px;color: var(--bs-orange);background: rgb(245,181,128);">
                    <h4 class="modal-title" style="color: var(--bs-gray-dark);">Edit Vehicle maintain Details</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" style="border-style: none;">
                    <form class="user">
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleFirstName-1" placeholder="Vehicle Number" name="VNumber" style="border-radius: 0px;"></div>
                            <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName-2" placeholder="Status" name="status" style="border-radius: 0px;"></div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="email" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="QTY" name="qty" style="border-radius: 0px;width: 308px;"></div>
                            <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName-2" placeholder="Part ID" name="part_id" style="border-radius: 0px;"></div>
                        </div>
                        <div class="mb-3"></div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0"><label class="form-label">Date</label><input class="form-control" type="date" style="border-radius: 0px;"></div>
                            <div class="col-sm-6" style="border-radius: 0px;"><textarea class="form-control" style="border-radius: 0px;height: 71px;" placeholder="Description" name="des"></textarea></div>
                        </div>
                        <hr><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-orange);border-color: var(--bs-orange);width: 527px;margin-bottom: 7px;">Update</button>
                        <hr>
                    </form>
                </div>
                <div class="modal-footer" style="background: #f5b580;"></div>
            </div>
        </div>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background: rgb(254,185,178);">
                    <h4 class="modal-title">Lorenzo</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Are you sure</p>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-bs-dismiss="modal">No</button><button class="btn btn-primary" type="button" style="border-color: var(--bs-red);background: var(--bs-red);">Yes</button></div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
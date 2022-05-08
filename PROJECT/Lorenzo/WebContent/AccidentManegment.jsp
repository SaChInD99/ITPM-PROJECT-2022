<%@page import="com.lorenzo.model.Accident"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lorenzo.services.Saccident"%>
<%@page import="com.lorenzo.interfaces.Iaccident"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Accident Management - Lorenzo</title>
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
                <h3 class="text-dark mb-4" style="margin-bottom: 26px; background: #ed1c24;">Accident Coverage Management</h3>
                <div class="container">
                    <div class="row">
                        <div class="col"><a href="AccidentCoverage.jsp"><button class="btn btn-primary" type="button" style="margin-bottom: 11px; background: green;"">Add New Record</button></a> <a href="report/AccidentServiceReport.jsp"><button class="btn btn-primary" type="button" style="margin-bottom: 11px; background: #ed1c24;">Generate Report</button> </a></div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 fw-bold">Accidents</p>
                        </div>
                        <%
                        	Iaccident accidentService = new Saccident();
                        	ArrayList<Accident> accidentList = accidentService.getAccidentList();
                        %>
                        <div class="card-body">
                            <div class="table-responsive table mt-3" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Vehicle Number</th>
                                            <th>Location</th>
                                            <th>Date Time</th>
                                            <th>Driver Name</th>
                                            <th>Option</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(Accident accident:accidentList){ %>
                                        <tr>
                                            <td style="color: var(--bs-danger);"><%=accident.getId() %></td>
                                            <td><%=accident.getVehicleId() %></td>
                                            <td><%=accident.getLocation() %></td>
                                            <td><%=accident.getDate() %> &nbsp; <%=accident.getTime() %></td>
                                            <td><%=accident.getDrivername() %></td>
                                            <td>
                                                <div>
                                                    <div class="row">
                                                        <div class="col" style="width: 20px;padding-left: 0px;padding-right: 0px;height: 36px;margin-right: -74px;">
                                                        <a href="updateAccident.jsp?id=<%=accident.getId()%>" class="btn btn-primary" type="button" style="background: var(--bs-primary);border-color: var(--bs-primary);"><i class="fa fa-pencil"></i></a></div>
                                                        <div class="col" style="width: 57.6px;padding-right: 0px;padding-left: 2px;margin-left: 22px;">
                                                        <a href="deleteAccident?id=<%=accident.getId() %>" class="btn btn-primary" type="button" style="background: var(--bs-danger);border-color: var(--bs-danger);"><i class="fa fa-trash"></i></a></div>
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
                    <div class="text-center my-auto copyright"><span>Copyright © Lorenzo 2022</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
        <div class="modal fade" role="dialog" tabindex="-1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="font-size: 24px;color: var(--bs-orange);background: rgb(245,181,128);">
                        <h4 class="modal-title" style="color: var(--bs-gray-dark);">Edit Resevation Details</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12">
                            <form class="user">
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleFirstName-1" placeholder="Pickup Location" name="pick_location" style="border-radius: 0px;"></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName-2" placeholder="Drop Location" name="drop_location" style="border-radius: 0px;"></div>
                                </div>
                                <div class="mb-3"></div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><label class="form-label">Time</label><input class="form-control" type="time" style="border-radius: 0px;"><label class="form-label">Date</label><input class="form-control" type="date" style="border-radius: 0px;"></div>
                                    <div class="col-sm-6"><label class="form-label">Vehicle type</label>
                                        <div class="form-check" style="width: 116px;padding-left: 24px;"><input class="form-check-input" type="radio" id="formCheck-1" name="gender"><label class="form-check-label" for="formCheck-1">Car</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-3" name="gender"><label class="form-check-label" for="formCheck-2">Van</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-4" name="gender"><label class="form-check-label" for="formCheck-2">TuckTuck</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-5" name="gender"><label class="form-check-label" for="formCheck-2">Truck</label></div>
                                    </div>
                                </div>
                                <div class="row mb-3" style="width: 100%;">
                                    <div class="col-12 col-sm-6 text-start mb-3 mb-sm-0" style="width: 1121.6px;"><iframe allowfullscreen="" frameborder="0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD6PLlXm_r4M6nKbeRM1LH15yc5wHWZqSM&amp;q=sri+lanka&amp;zoom=11" width="100%" height="200"></iframe></div>
                                </div>
                                <hr><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;border-color: var(--bs-blue);background: var(--bs-blue);width: 50px;">Edit</button>
                                <hr>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer" style="background: #f5b580;"></div>
                </div>
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
    <div class="modal fade" role="dialog" tabindex="-1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="font-size: 24px;color: var(--bs-orange);background: rgb(245,181,128);">
                    <h4 class="modal-title" style="color: var(--bs-gray-dark);">Edit Booking Details</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form class="user">
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleFirstName-3" placeholder="Vehicle Number" name="VNumber" style="border-radius: 0px;"></div>
                            <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName-4" placeholder="Last Name" name="last_name" style="border-radius: 0px;"></div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="email" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Location" name="Location" style="border-radius: 0px;width: 308px;"></div>
                            <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName-5" placeholder="Driver Name" name="driverName" style="border-radius: 0px;"></div>
                        </div>
                        <div class="mb-3"></div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0"><label class="form-label">Time</label><input class="form-control" type="time" style="border-radius: 0px;"><label class="form-label">Date</label><input class="form-control" type="date" style="border-radius: 0px;"></div>
                            <div class="col-sm-6"><label class="form-label">Vehicle type</label>
                                <div class="form-check" style="width: 116px;padding-left: 24px;"><input class="form-check-input" type="radio" id="formCheck-6" name="gender"><label class="form-check-label" for="formCheck-1">Car</label></div>
                                <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-7" name="gender"><label class="form-check-label" for="formCheck-2">Van</label></div>
                                <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-8" name="gender"><label class="form-check-label" for="formCheck-2">TuckTuck</label></div>
                                <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-9" name="gender"><label class="form-check-label" for="formCheck-2">Truck</label></div>
                            </div>
                        </div>
                        <hr><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-orange);border-color: var(--bs-orange);width: 527px;margin-bottom: 7px;">Edit</button>
                        <hr>
                    </form>
                </div>
                <div class="modal-footer" style="background: #f5b580;"></div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
<%@page import="com.lorenzo.model.Vehicle"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lorenzo.services.Svehicle"%>
<%@page import="com.lorenzo.interfaces.Ivehicle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
</html>
<!DOCTYPE html>
<html style="color: var(--bs-light);border-color: var(--bs-red);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Accident Coverage - Lorenzo</title>
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jsp">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jsp">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jsp">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jsp">
    <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/logo.jsp">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Article-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
</head>

<body> <style>
    body  {
       background-image: url("assets/img/empr.jpg");
       background-color: #cccccc;
       background-size: cover;
       background-attachment: fixed;
     }
     </style>
    <div class="container" style="border-color: var(--bs-cyan);">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                    <a href="AccidentManegment.jsp"><div class="col" style="width: 785px;"><button class="btn btn-primary" type="button" style="height: 100%;border-radius: 0px;border-style: none;"><i class="fa fa-arrow-left"></i></button></div></a>
                    <div class="col-lg-5 d-none d-lg-flex" style="height: 457px;width: 476px;"><img src="assets/img/logo.jpg" style="width: 100%;"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Accident Coverage</h4>
                            </div>
                            <form class="user" action="addAccident" method="post">
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <%Ivehicle vehicleService = new Svehicle();
                                      ArrayList<Vehicle> vehicleNumberList = vehicleService.getVehicleList();
                                    %>
                                    <input class="form-control form-control-user" type="text" id="exampleFirstName-1" placeholder="Vehicle Number" name="VNumber" style="border-radius: 0px;" list="numberList" required="required">
                                    <datalist id="numberList">
                                    <%for(Vehicle vehicle :vehicleNumberList){ %>
								        <option value="<%=vehicle.getVehicleNumber()%>"><%=vehicle.getVehicleNumber()%> - owner: <%=vehicle.getOwnerName()%> - type :<%=vehicle.getType()%></option>
									<%} %>
								    </datalist>
                                    </div>
                                     <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName-2" placeholder="Driver Name" name="driverName" style="border-radius: 0px;" required="required"></div>
                               
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleInputEmail"  placeholder="Location" name="Location" style="border-radius: 0px;width: 308px;" required="S"></div>
                                    </div>
                                <div class="mb-3"></div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><label class="form-label">Time</label><input class="form-control" type="time" style="border-radius: 0px;" name="time"><label class="form-label">Date</label><input class="form-control" type="date" name="date" style="border-radius: 0px;"></div>
                                    <div class="col-sm-6"><label class="form-label">Vehicle type</label>
                                        <div class="form-check" style="width: 116px;padding-left: 24px;"><input class="form-check-input" type="radio" id="formCheck-1" name="type" value="Toyota Aqua"><label class="form-check-label" for="formCheck-1">Toyota Aqua</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-2" name="type" value="Volkswagen Polo"><label class="form-check-label" for="formCheck-2" >Volkswagon Polo</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-3" name="type" value="Toyota Axio"><label class="form-check-label" for="formCheck-3">Toyota Axio</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-4" name="type" value="Toyota Hiace KDH"><label class="form-check-label" for="formCheck-4">Toyota Hiace KDH</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-4" name="type" value="Nissan X-trail"><label class="form-check-label" for="formCheck-4">Nissan X-trail</label></div>
                                    </div>
                                </div>
                                <hr><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: #ed1c24;border-color: #ed1c24;width: 527px;margin-bottom: 7px;">Add</button><a href="AccidentManegment.jsp" class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-green);border-color: var(--bs-blue);">View Table</a>
                                <hr>
                            </form>
                            <div class="text-center"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
<%@page import="com.lorenzo.services.Svehicle"%>
<%@page import="com.lorenzo.interfaces.Ivehicle"%>
<%@page import="com.lorenzo.model.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="color: var(--bs-light);border-color: var(--bs-orange);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Update Vehicle - Lorenzo</title>
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

<body> <style>
    body  {
       background-image: url("assets/img/veh.jpg");
       background-color: #cccccc;
       background-size: cover;
       background-attachment: fixed;
     }
     </style> 
    <div class="container" style="border-color: var(--bs-orange);">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                    <a href="VehicleManegment.jsp"><div class="col" style="width: 785px;"><button class="btn btn-primary" type="button" style="height: 100%;border-radius: 0px;border-style: none;"><i class="fa fa-arrow-left"></i></button></div></a>
                    <div class="col-lg-5 d-none d-lg-flex" style="height: 457px;width: 476px;"><img src="assets/img/logo.jpg" style="width: 100%;"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Update Vehicle details</h4>
                            </div>
                            <form class="user" action="updateVehicle" method="post">
                            <%
                            	Ivehicle vehicleService = new Svehicle();
                            	Vehicle vehicle = vehicleService.getVehicle(request.getParameter("id"));
                            %>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleFirstName-1" placeholder="Vehicle Number"   value="<%=vehicle.getVehicleNumber() %>"  style="border-radius: 0px;" disabled="disabled" ></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="number" id="exampleFirstName-2" placeholder="Number of pasengers" name="noOfPAsengers" value="<%=vehicle.getNoOfPasenger() %>"  style="border-radius: 0px;" required="required"></div>
                                </div>
                                <input type="hidden" name="state" value="<%=vehicle.getStatus()%>">
                                <input type="hidden" name="vehicleNumber" value="<%=vehicle.getVehicleNumber()%>">
                                <div class="col-sm-12 mb-3"><input class="form-control form-control-user" type="text" id="ownerName" placeholder="Owner Name" name="ownerName" style="border-radius: 0px;" value="<%=vehicle.getOwnerName()%>"></div>
                               <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><textarea class="form-control form-control-lg" name="address" placeholder="Address" style="height: 135.2px;font-size: 12.8px;width: 309px;border-radius: 0px;"><%=vehicle.getAddress() %></textarea></div>
                                    <div class="col-sm-6"><label class="form-label">Vehicle type</label>
                                     <div class="col-sm-6"><label class="form-label">1. Car</label>
                                      <div class="form-check" style="width: 116px;padding-left: 24px;"><input class="form-check-input" type="radio" id="formCheck-1" name="type" value="Toyota Aqua" <% if(vehicle.getType().equals("Toyota Aqua")) {%> checked="checked" <%} %>><label class="form-check-label" for="formCheck-1">Toyota Aqua</label></div>
                                        <div class="form-check" style="width: 200px;"><input class="form-check-input" type="radio" id="formCheck-2" name="type" value="Volkswagon Polo" <% if(vehicle.getType().equals("Volkswagon Polo")) {%> checked="checked" <%} %>><label class="form-check-label" for="formCheck-2" >Volkswagon Polo</label></div>
                                        <div class="form-check" style="width: 200px;"><input class="form-check-input" type="radio" id="formCheck-4" name="type" value="Toyota Axio" <% if(vehicle.getType().equals("Toyota Axio")) {%> checked="checked" <%} %>><label class="form-check-label" for="formCheck-4">Toyota Axio</label></div>
                                        
                                      <div class="col-sm-6"><label class="form-label">2. Van</label>
                                        <div class="form-check" style="width: 200px;"><input class="form-check-input" type="radio" id="formCheck-3" name="type" value="Toyota Hiace KDH" <% if(vehicle.getType().equals("Toyota Hiace KDH")) {%> checked="checked" <%} %>><label class="form-check-label" for="formCheck-3">Toyota Hiace KDH</label></div>
                                       
                                       <div class="col-sm-9"><label class="form-label">3. SUV</label>
                                        <div class="form-check" style="width: 200px;"><input class="form-check-input" type="radio" id="formCheck-4" name="type" value="Nissan X-trail" <% if(vehicle.getType().equals("Nissan X-trail")) {%> checked="checked" <%} %>><label class="form-check-label" for="formCheck-4">Nissan X-trail</label></div>
                                        
                                    </div>
                                </div>
                                <hr><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-orange);border-color: var(--bs-orange);">Add</button>
                                
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
<%@page import="com.lorenzo.vehicle_retun.VehicleReturn"%>
<%@page import="com.lorenzo.vehicle_retun.VehicleReturnImp"%>
<%@page import="com.lorenzo.vehicle_retun.IVehicleReturn"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="color: var(--bs-light);border-color: var(--bs-orange);height: 689px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Update- Lorenzo</title>
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

<body 

class="bg-gradient-primary" style="border-color: var(--bs-orange);background: red;">
    <div class="container" style="border-color: var(--bs-orange);">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                <%
                	int id = Integer.parseInt(request.getParameter("id"));
                	IVehicleReturn service = new VehicleReturnImp();
                	VehicleReturn vehicle= service.getVehicleReturn(id);
                %>
                    <a href="VehicleReturnManagment.jsp"><div class="col" style="width: 785px;"><button class="btn btn-primary" type="button" style="height: 100%;border-radius: 0px;border-style: none;"><i class="fa fa-arrow-left"></i></button></div></a>
                    <div class="col-lg-5 d-none d-lg-flex" style="height: 457px;width: 476px;"><img src="assets/img/logo.jpg" style="width: 100%;"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Update vehicle return details</h4>
                            </div>
                            
                            <form class="user" action="updateVehicleReturn" method="post">

                                <input type="hidden" name="id" value="<%=vehicle.getId()%>">
                                
                                <div class="row mb-3 pr-3">
                                    <div class="col-sm-6 mb-3  ">
                                    <label for="vNumber">Vehicle number</label>
                                    <input class="form-control form-control-user" value="<%=vehicle.getVehicleNumber()%>" type="text" id="vNumber" placeholder="Enter vehicle number" name="vNumber" style="border-radius: 0px;" list="numberList" required="required">
                                      <datalist id="numberList">
                                      
									  </datalist>
                                    </div> 
                                     <div class="col-sm-6">
                                    	<label for="cusName">Customer name</label>
                                    <input class="form-control form-control-user" value="<%=vehicle.getCusName()%>" type="text" id="cusName" placeholder="Enter customer name" name="cusName" style="border-radius: 0px;" inputmode="email" required="required">
                                    </div> 
                                </div>
                                
                                 <div class="row mb-3 pr-3">                                    
                                    <div class="col-sm-6">
                                    	<label for="email">Customer E-mail address</label>
                                    	<input class="form-control form-control-user" value="<%=vehicle.getEmail()%>" type="email" id="email" placeholder="Enter e-mail address" name="email" style="border-radius: 0px;" inputmode="email" required="required">
                                    </div>
                                    
                                     <div class="col-sm-6 ">
                                    	<label for="tel">Customer contact number</label>
                                    	<input class="form-control form-control-user" value="<%=vehicle.getContact()%>" type="tel" id="tel"   placeholder="Enter contact number" name="tel" style="border-radius: 0px; " required="required">
                                    </div>
                                </div>
                                <hr>
                                 <div class="row mb-3">
                                    <div class="col-sm-4 mb-3  ">
                                    <label for="pickDate">Pickup date</label>
                                    <input class="form-control form-control-user" value="<%=vehicle.getPickupDate()%>" type="date" id="pickDate" placeholder="Enter pickup date" name="pickDate" style="border-radius: 0px;"  required="required">
                                    </div>
                                    
                                    <div class="col-sm-4   ">
                                    	<label for="returnDate">Return date</label>
                                    	<input class="form-control form-control-user" value="<%=vehicle.getReturnDate()%>" type="date" id="returnDate" placeholder="Enter return date" name="returnDate" style="border-radius: 0px;" required="required">
                                    </div>
                                    
                                     <div class="col-sm-4 ">
                                    	<label for="dropTime">Drop off time</label>
                                    	<input class="form-control form-control-user" value="<%=vehicle.getReturnTime()%>" type="time" id="dropTime"   placeholder="Enter contact number" name="dropTime" style="border-radius: 0px ;" required="required">
                                    </div>
                                </div> 
                                
                                <div class="mb-3"></div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<label class="form-label">Vehicle type</label>
                                    	<select class="form-control " id="vType" name="vType">
                                    		<option value="">-- select --</option>
                                    		<option <%if (vehicle.getVehicleType().equals("Car")){%> selected="selected"<% } %> value="Car">Car</option>
                                    		<option <%if (vehicle.getVehicleType().equals("Van")){%> selected="selected"<% } %> value="Van">Van</option>
                                    		<option <%if (vehicle.getVehicleType().equals("Truck")){%> selected="selected"<% } %> value="Truck">Truck</option>
                                    		<option <%if (vehicle.getVehicleType().equals("Tuck tuck")){%> selected="selected"<% } %> value="Tuck tuck">Tuck tuck</option>
                                    		<option <%if (vehicle.getVehicleType().equals("Bike")){%> selected="selected"<% } %> value="Bike">Bike</option>
                                    	</select>
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<label class="form-label">Service type</label>
                                    	<select class="form-control " id="sType" name="sType">
                                    		<option value="">-- select --</option>
                                    		<option <%if (vehicle.getServiceType().equals("Self drive")){%> selected="selected"<% } %> value="Self drive">Self drive</option>
                                    		<option <%if (vehicle.getServiceType().equals("Tour")){%> selected="selected"<% } %> value="Tour">Tour</option>
                                    		<option <%if (vehicle.getServiceType().equals("Wedding and event")){%> selected="selected"<% } %> value="Wedding and event">Wedding and event</option>
                                    		<option <%if (vehicle.getServiceType().equals("Airport/city transfer")){%> selected="selected"<% } %> value="Airport/city transfer">Airport/city transfer</option> 
                                    	</select>
                                    </div> 
                                </div>
                                <hr><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-green);border-color: var(--bs-green);width: 527px;margin-bottom: 7px;">Submit</button><a href="VehicleReturnManagment.jsp" class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-red);border-color: var(--bs-red);">View Table</button></a>
                                 
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


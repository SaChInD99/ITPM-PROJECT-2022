<%@page import="com.lorenzo.model.User"%>
<%@page import="com.lorenzo.services.Scustomer"%>
<%@page import="com.lorenzo.model.Customer"%>
<%@page import="com.lorenzo.interfaces.Icustomer"%>
<%@page import="com.lorenzo.services.Svehicle"%>
<%@page import="com.lorenzo.model.Vehicle"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lorenzo.interfaces.Ivehicle"%>
<%@page import="com.lorenzo.model.Resarvation"%>
<%@page import="com.lorenzo.services.Sresarvation"%>
<%@page import="com.lorenzo.interfaces.Iresarvation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="color: var(--bs-light);border-color: var(--bs-orange);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Update Booking - Lorenzo</title>
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
    <style>
#map_canvas {
     height:250px;
     width:660px;
     margin: 0;
      padding: 0;
     position: absolute; 
     overflow: show;
}
</style>

</head>

<body> <style>
    body  {
       background-image: url("assets/img/cus.jpg");
       background-color: #cccccc;
       background-size: cover;
       background-attachment: fixed;
     }
     </style>
<% User user = (User)session.getAttribute("user"); %>
    <div class="container" style="border-color: var(--bs-orange);">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                    <a href="resarvationManegment.jsp"><div class="col" style="width: 785px;"><button class="btn btn-primary" type="button" style="height: 100%;border-radius: 0px;border-style: none;"><i class="fa fa-arrow-left"></i></button></div></a>
                    <div class="col-lg-5 d-none d-lg-flex" style="height: 457px;width: 476px;"><img src="assets/img/logo.jpg" style="width: 100%;"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Update Booking</h4>
                            </div>
                           <form class="user" action="updateReservation" method="post">
                                <div class="row mb-3" id="pac-container">
                                <%
                                 int id = Integer.parseInt(request.getParameter("id"));
                                 Iresarvation resarvationService = new Sresarvation();
                                 Resarvation resarvation = resarvationService.getResarvation(id);
                                %>
      								<div class="col-sm-6 mb-3 mb-sm-0">
                                    <input class="form-control form-control-user" value="<%=resarvation.getPickupLocation() %>" type="search" id="pick" placeholder="Pickup Location" name="pick_location" style="border-radius: 0px;"></div>
                                   
                                    <div class="col-sm-6">
                                    <input class="form-control form-control-user"  value="<%=resarvation.getDropLocation() %>" type="search" id="drop" placeholder="Drop Location" name="drop_location" style="border-radius: 0px;"></div>
                                	
                                  </div>
                                <div class="mb-3"></div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><label class="form-label">Time</label><input class="form-control" value="<%=resarvation.getTime() %>" type="time" name="time" style="border-radius: 0px;"><label class="form-label">Date</label><input class="form-control" name="date"  value="<%=resarvation.getDate() %>"type="date" style="border-radius: 0px;"></div>
                                    <div class="col-sm-6"><label class="form-label">Vehicle type</label>
                                        <div class="form-check" style="width: 116px;padding-left: 24px;"><input class="form-check-input" type="radio" id="formCheck-1" name="type" value="Toyota Aqua" <%if(resarvation.getVehicleType().equals("Toyota Aqua")){ %> checked="checked" <%} %>><label class="form-check-label" for="formCheck-1">Toyota Aqua</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" <%if(resarvation.getVehicleType().equalsIgnoreCase("Volkswagen Polo")){ %> checked="checked" <%} %> id="formCheck-2" name="type" value="Volkswagen Polo"><label class="form-check-label" for="formCheck-2">Volkswagen Polo</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-3" name="type" value="Toyota Axio" <%if(resarvation.getVehicleType().equals("Toyota Axio")){ %> checked="checked" <%} %>><label class="form-check-label" for="formCheck-3">Toyota Axio</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-4" name="type" value="Toyota Hiace KDH" <%if(resarvation.getVehicleType().equals("Toyota Hiace KDH")){ %> checked="checked" <%} %>><label class="form-check-label" for="formCheck-4">Toyota Hiace KDH</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="formCheck-4" name="type" value="Nissan X-trail" <%if(resarvation.getVehicleType().equals("Nissan X-trail")){ %> checked="checked" <%} %>><label class="form-check-label" for="formCheck-4">Nissan X-trail</label></div>
                                    </div>
                                </div>
                                 <div class="row mb-3" >
                                
      								<div class="col-sm-6 mb-3 mb-sm-0">
                                     <%Ivehicle vehicleService = new Svehicle();
                                      ArrayList<Vehicle> vehicleNumberList = vehicleService.getVehicleByStatus("not-assigned");
                                      if(user.getUserType().equals("employee")){
                                    %>
                                    <input class="form-control form-control-user" type="text" id="exampleFirstName-1" placeholder="Vehicle Number" name="VNumber"  value="<%=resarvation.getVehicleId()%>" style="border-radius: 0px; margin-bottom: 15px;"  list="numberList" required="required">
                                    <datalist id="numberList">
                                    <%for(Vehicle vehicle :vehicleNumberList){ %>
								        <option value="<%=vehicle.getVehicleNumber()%>"><%=vehicle.getVehicleNumber()%> - type :<%=vehicle.getType()%></option>
									<%} %>
								    </datalist>
								    <%} %>
                                   </div>
                                   <div class="col-sm-6 mb-3 mb-sm-0">
                                       <%Icustomer cusService = new Scustomer();
                                      ArrayList<Customer> cusList = cusService.getCustomerList();
                                      if(user.getUserType().equals("employee")){
                                    %>
                                    <input class="form-control form-control-user" type="text" id="exampleFirstName-1" value="<%=resarvation.getUserId() %>" placeholder="Customer Name" name="cusName" style="border-radius: 0px; margin-bottom: 15px;"  list="userName" required="required">
                                       <datalist id="userName">
                                       <%for(Customer customer :cusList){ %>
								        <option value="<%=customer.getId()%>">name : <%=customer.getName() %> | User name : <%=customer.getUserName() %></option>
									<%} %>
								    </datalist>
								    <%}else{ %>
								    <input type="hidden" name="cusName" value="<%=user.getId()%>">
                                    <%} %>
                                   </div>
                                    </div>
                                 <div class="row  mb-3" style="height: 250px;">
                                 <div id="map_canvas">  <div id="infowindow-content">
								      <span id="place-name" class="title"></span><br />
								      <span id="place-address"></span>
								    </div>
                                </div>
                                </div>
                                <input type="hidden"  name="id" value="<%=resarvation.getId()%>">
                                <div class="row mb-3 p"   >
                                 <hr>
      								<div class="col-sm-6  " >
                                    <button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;border-color: var(--bs-blue);background: var(--bs-blue);width: 50px;">Update</button>
                                </div>
                                    <div class="col-sm-6 mb-3">
                                    <a href="updateResarvation.jsp?id=<%=resarvation.getId() %>" class="btn btn-danger d-block btn-user w-100" type="reset" style="border-radius: 0px;width: 50px;">Reset</a>
                               
                               </div>
                                <hr>
                               </div>
                               
                            </form>
                            <div class="text-center"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBIwzALxUPNbatRBj3Xi1Uhp0fFzwWNBkE&callback=pickMap&libraries=places&v=weekly"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
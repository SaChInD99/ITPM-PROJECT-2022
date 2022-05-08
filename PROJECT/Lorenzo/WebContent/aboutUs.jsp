<%@page import="com.lorenzo.services.Scustomer"%>
<%@page import="com.lorenzo.interfaces.Icustomer"%>
<%@page import="com.lorenzo.model.Customer"%>
<%@page import="com.lorenzo.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lorenzo.model.Rating"%>
<%@page import="com.lorenzo.services.Srating"%>
<%@page import="com.lorenzo.interfaces.Irating"%>
<%@page import="com.lorenzo.utill.ratingUtill"%>
<%@page import="com.lorenzo.utill.utill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Dashboard - Lorenzo</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Article-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="assets/css/User-rating.css">
</head>
<script type="text/javascript">
function showUpdate() {
	  var x = document.getElementById("myDIV");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	}
</script>
<body id="page-top">
<style>
*{
    margin: 0;
    padding: 0;
}
.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}
.reting-box{
	background-image: assert/img/RATING2;
	background-repeat: no-repeat;
	background-position: center;
}
</style>
    <div id="wrapper">
        <jsp:include page="header.jsp"/>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content" style="background: var(--bs-light);">
                 <jsp:include page="title.jsp"/>
                <div class="container-fluid" style="background: black;">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4" style="padding-top: 33px;">
                        <h3 class="text-red mb-0">About us</h3>
                    </div>
                    <div class="row jello animated">
                        <div class="col d-xxl-flex justify-content-xxl-center align-items-xxl-center"><img class="d-xxl-flex justify-content-xxl-center align-items-xxl-center" src="assets/img/logo.jpg" style="width: 25%;"></div>
                    </div>
                </div>
                <div class="row" style="margin-top: 9px;">
                    <div class="col">
                        <div class="card">
                            <div class="card-body" data-aos="fade-up" style="text-align: center;">
                                <h4 class="card-title" style="text-align: center;"><i class="fa fa-road" style="color: var(--bs-red);font-size: 100px;text-shadow: 6px 6px 14px var(--bs-#98AFC7);"></i></h4>
                                <h4 class="card-title">Travel any ware&nbsp;</h4>
                                <h4 class="card-title" style="text-align: center;"></h4>
                                <p class="card-text">Need travel&nbsp; but no vehicle do not worry travel any ware using our vehicles</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <div class="card-body" data-aos="fade-up" style="text-align: center;">
                                <h4 class="card-title" style="text-align: center;"><i class="fa fa-gear" style="color: var(--bs-red);font-size: 100px;text-shadow: 6px 6px 14px var(--bs-gray);"></i></h4>
                                <h4 class="card-title">customizable</h4>
                                <p class="card-text">Use any vehicle according to you need fully customizable travel packages</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <div class="card-body" data-aos="fade-up" style="text-align: center;"><i class="fa fa-crosshairs" style="color: var(--bs-red);font-size: 100px;text-shadow: 6px 6px 14px var(--bs-gray);"></i>
                                <h4 class="card-title">Location&nbsp;</h4>
                                <p class="card-text">Get vehicle to your location no need to worry set location and enjoy your journey</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <header></header>
             <%
				                User user = new User();
				                user = (User)session.getAttribute("user");
                            	ratingUtill rating = new ratingUtill();
                            	boolean userhasRating = rating.isUserHasRating(user.getId());
                            	int star5 = rating.getStarCount(5);
                            	int star4 = rating.getStarCount(4);
                            	int star3 = rating.getStarCount(3);
                            	int star2 = rating.getStarCount(2);
                            	int star1 = rating.getStarCount(1);
                            	int starCount = star1 + star2+star3+star4+star5;
                            	
                            	float avgStar = rating.getAvgRating();
                            	int avgCount =rating.getAvgStarCount(rating.getAvgRating());
                            %>
            <div class="row" style="margin-bottom: 9px;">
                <div class="col">
                    <div class="row">
                        <div class="col" data-aos="fade-up">
                            <div class="row" style="margin-top: 26px;margin-bottom: 4px;">
                                <div class="col" style="width: 459.8px;"></div>
                                <div class="col">
                                    <div class="user-body"><span class="heading" style="text-align: center;margin-top: 24px;width: 22px;">User Rating</span>
                                       <%
                                       switch(avgCount){
                                       case 5:
                                       %>
                                        <div><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><i class="fa fa-star checked"></i></div>
                                       <%
                                       break;
                                       case 4:
                                       %>
                                        <div><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><i class="fa fa-star"></i></div>
                                        <%
                                       break;
                                       case 3:
                                       %>
                                        <div><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><i class="fa fa-star"></i></div>
                                        <%
                                       break;
                                       case 2:
                                       %>
                                        <div><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star "></span><span class="fa fa-star"></span><i class="fa fa-star"></i></div>
                                       <%
                                       break;
                                       case 1:
                                       %>
                                        <div><span class="fa fa-star checked"></span><span class="fa fa-star "></span><span class="fa fa-star "></span><span class="fa fa-star "></span><i class="fa fa-star"></i></div>
                                       <%
                                       break;
                                       default:
                                       %>
                                        <div><span class="fa fa-star"></span><span class="fa fa-star "></span><span class="fa fa-star "></span><span class="fa fa-star "></span><i class="fa fa-star"></i></div>
                                      <%
                                      break;
                                      } %>
                                       
                                        <p><%=avgStar %> average based on <%=starCount %> reviews.</p>
                                    </div>
                                </div>
                                <div class="col" style="width: 476.8px;margin-right:100px;">
                                    <div class="pb-row">
                                    <div class="row">
                                    <div class="col-md-2">5 Star</div>
	                                    <div class="col-md-8">
	                                     <div class="progress">
										 <div class="progress-bar" role="progressbar" style="width: <%=star5 %>%"  aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
                                    </div>
                                    <div class="col-md-2"><%=star5 %></div>
                                     </div>
									 <div class="row">
                                    <div class="col-md-2">4 Star</div>
	                                    <div class="col-md-8">
	                                     <div class="progress">
										 <div class="progress-bar bg-info " role="progressbar" style="width: <%=star4 %>%"  aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
                                    </div>
                                     <div class="col-md-2"><%=star4 %></div>
                                     </div>
                                     <div class="row">
                                    <div class="col-md-2">3 Star</div>
	                                    <div class="col-md-8">
	                                     <div class="progress">
										 <div class="progress-bar bg-success" role="progressbar" style="width: <%=star3 %>%"  aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
                                    </div>
                                     <div class="col-md-2"><%=star3 %></div>
                                     </div>
                                     <div class="row">
                                    <div class="col-md-2">2 Star</div>
	                                    <div class="col-md-8">
	                                     <div class="progress">
										 <div class="progress-bar bg-warning" role="progressbar" style="width: <%=star2 %>%"  aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
                                    </div>
                                     <div class="col-md-2"><%=star2 %></div>
                                     </div>
                                     <div class="row">
                                    <div class="col-md-2">1 Star</div>
	                                    <div class="col-md-8">
	                                     <div class="progress">
										 <div class="progress-bar bg-danger" role="progressbar" style="width: <%=star1 %>%"  aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
                                    </div>
                                     <div class="col-md-2"><%=star1 %></div>
                                     </div>
                                     </div>
                                <div class="col"></div>
                            </div>
                            
                           
                            <%
                             
                            if(user != null && user.getUserType().equals("customer")) {%>
                            <% if(!userhasRating){%>
                            <div class="row bg-dark">
                                <div class="col-md-12" style="padding:50px;">
                                <hr> 
                                    <form action="addRating" method="post">
                                    <heading style="font-size:27px;text-align:center;">Tell us About your experience</heading>
                                    <div class="row">
                                    <div class="rate col-md-12 ">
									    <input type="radio" id="star5" name="rate" value="5" />
									    <label for="star5" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star4" name="rate" value="4" />
									    <label for="star4" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star3" name="rate" value="3" />
									    <label for="star3" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star2" name="rate" value="2" />
									    <label for="star2" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star1" name="rate" value="1" />
									    <label for="star1" title="text"><i class="fa fa-star"></i></label>
									  </div>
									  <input type="hidden" name="uid" value="<%=user.getId() %>">
									  <div class="col input-group" style=""padding-left:20px;margin-left:50px;">
									  	<textarea name ="des" class="form-control" placeholder="Enter your experience...." rows="5" required="required"></textarea>
									  </div>
									  </div>
									 <div class=" input-group" style="margin-top:20px;">
									  <input type="submit" class="col btn btn-primary" value="Submit"  >
									  </div>
									  
                                    </form> 
                                </div>
                                
                            </div>
                            <%}else{
                            	Irating ratingService = new Srating();
                            	Rating rate = ratingService.getRating(user.getId());
                            	
                            %>
                            <div class="row bg-dark">
                                <div class="col-md-12" style="padding:50px;">
                                <hr> 
                                   <div class="row" style="padding-top: 9px;padding-bottom: 28px;"> 
                                    <div class="col">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title" style="text-align: center;"><%=user.getUserName() %></h4>
                                                <div class="row d-xxl-flex justify-content-xxl-center" style="margin-bottom: 6px;">
                                                    <div class="col-2 order-1" style="border-radius: 30px;border-width: 1px;border-style: solid;background: var(--bs-orange);width: 73.862px;text-align: center;height: 32.8px;"><i class="fa fa-star" style="color: var(--bs-light);"></i>
                                                        <div class="d-flex flex-column justify-content-end align-items-end align-self-end flex-nowrap order-2" style="margin-top: -26px;margin-right: -4px;">
                                                            <p style="color: var(--bs-light);"><%=rate.getRating() %></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="card-text" style="text-align: center;"><%=rate.getDescription() %></p>
                                            </div>
                                            <div style="text-align: center;">
                                            <button onclick="showUpdate()" class="btn btn-primary" style="width:100px; margin-left:5px; margin-bottom:5px;"><i class="fa fa-pencil"></i> Edit</button>
                                            <a href="deleteRating?id=<%=rate.getId() %>" class="btn btn-danger" style="width:100px; margin-left:5px; margin-bottom:5px;"><i class="fa fa-trash"></i> Delete</a>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                                <div id="myDIV" style="display:none;">
										 <div class="row bg-dark">
                                <div class="col-md-12" style="padding:50px;">
                                <hr> 
                                    <form action="updateRating" method="post">
                                    <heading style="font-size:27px;text-align:center;">Update your rating</heading>
                                    <div class="row">
                                    <div class="rate col-md-12 ">
									    <input type="radio" id="star5" name="rate" value="5" <% if(rate.getRating() == 5) {%> checked="checked"<%} %>/>
									    <label for="star5" title="text"><i class="fa fa-star" ></i></label>
									    <input type="radio" id="star4" name="rate" value="4" <% if(rate.getRating() == 4) {%> checked="checked"<%} %> />
									    <label for="star4" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star3" name="rate" value="3" <% if(rate.getRating() == 3) {%> checked="checked"<%} %>/>
									    <label for="star3" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star2" name="rate" value="2" <% if(rate.getRating() == 2) {%> checked="checked"<%} %>/>
									    <label for="star2" title="text"><i class="fa fa-star"></i></label>
									    <input type="radio" id="star1" name="rate" value="1" <% if(rate.getRating() == 1) {%> checked="checked"<%} %>/>
									    <label for="star1" title="text"><i class="fa fa-star"></i></label>
									  </div>
									  <input type="hidden" name="uid" value="<%=user.getId() %>">
									  <div class="col input-group" style=""padding-left:20px;margin-left:50px;">
									  	<textarea name ="des" class="form-control" placeholder="Enter your expirence...." rows="5" required="required"><%=rate.getDescription() %></textarea>
									  </div>
									  </div>
									 <div class=" input-group" style="margin-top:20px;">
									  <input type="submit" class="col btn btn-info" value="Update"  >
									  </div>
									  
                                    </form> 
                                </div>
                                
                            </div>
								</div>
                                </div>
                                
                            </div>
                            <%} %>
                            </div>
                        </div>
                    </div>
                    <div class="carousel slide " data-bs-ride="carousel" id="carousel-1" style="height:300px;" style="background-image: url("assets/img/RATING2.jpg") center  contain no-repeat;">
                        <div class="carousel-inner " style="height:300px;">
                        <div class="carousel-item active rating-box">
                                <div class="row" style="background: var(--bs-gray-dark);padding-top: 9px;padding-bottom: 28px;"style="height:300px;"> 
                                    <div class="col" style="height:300px;">
                                        <div class="card" style="height:250px;" >
                                            <div class="card-body rating-box" >
                                                <h4 class="card-title" style="text-align: center;"></h4>
                                               <center><img src="assets/img/logo.jpg" width="10%"></center>
                                                <p class="card-text" style="text-align: center;"> Get best reservation experience with our service </p>
                                           		<p class="card-text text-danger" style="text-align: center;"> See what users said about us with they are experience </p>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        <%
                       		Irating ratingService = new Srating();
                        	ArrayList<Rating> ratingList =  ratingService.getRatingList();
                        	Icustomer customerservice = new Scustomer();
                        	for(Rating rate :ratingList){
                        		Customer customer = customerservice.getCustomer(user.getId());
                        %>
                            <div class="carousel-item ">
                                <div class="row" style="background: var(--bs-gray-dark);padding-top: 9px;padding-bottom: 28px;"style="height:300px;"> 
                                    <div class="col" style="height:300px; width: 80%">
                                        <div class="card" style="height:250px;">
                                            <div class="card-body">
                                            <center><img src="assets/img/logo." width="8%"></center>
                                                <h4 class="card-title" style="text-align: center;"><%=customer.getName() %></h4>
                                                <div class="row d-xxl-flex justify-content-xxl-center" style="margin-bottom: 6px;">
                                                    <div class="col-2 order-1" style="border-radius: 30px;border-width: 1px;border-style: solid;background: var(--bs-orange);width: 73.862px;text-align: center;height: 32.8px;"><i class="fa fa-star" style="color: var(--bs-light);"></i>
                                                        <div class="d-flex flex-column justify-content-end align-items-end align-self-end flex-nowrap order-2" style="margin-top: -26px;margin-right: -4px;">
                                                            <p style="color: var(--bs-light);justify-content-end align-items-end align-self-end flex-nowrap order-2"><%=rate.getRating()%></p>
                                                        </div>
                                                        <div style="background: url("RATING2.jpg") center / contain no-repeat;"></div>
                                                    </div>
                                                </div>
                                                <p class="card-text" style="text-align: center;"><%=rate.getDescription() %></p>
                                                
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                             <%} %>
                            <%} %>
                        </div>
                        <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon" style="color: var(--bs-orange);"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></a></div>
                         
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright  Lorenzo 2022</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
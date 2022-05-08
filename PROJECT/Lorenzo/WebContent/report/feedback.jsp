<%@page import="com.lorenzo.model.Rating"%>
<%@page import="com.lorenzo.services.Srating"%>
<%@page import="com.lorenzo.interfaces.Irating"%>
<%@page import="com.lorenzo.vehicle_retun.VehicleReturn"%>
<%@page import="com.lorenzo.vehicle_retun.VehicleReturnImp"%>
<%@page import="com.lorenzo.vehicle_retun.IVehicleReturn"%>
<%@page import="com.lorenzo.interfaces.Ivehicle"%>
<%@page import="java.util.List"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%

        

    %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Report</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="robots" content="all,follow">
        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="../asserts/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="../asserts/font-awesome/css/font-awesome.min.css">
        <!-- Fontastic Custom icon font-->
        <link rel="stylesheet" href="../css/fontastic.css">
        <!-- Google fonts - Poppins -->
        <link rel="stylesheet" href="../https://fonts.googleapis.com/css?family=Poppins:300,400,700">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="../css/style.blue.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <!-- Favicon-->
        <link rel="shortcut icon" href="../img/favicon.ico">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>

    <body onload="getDate()" >
        <script>
            function getDate(){
    var today = new Date();

    var date = today.getFullYear()+' / '+(today.getMonth()+1)+' / '+today.getDate();
    document.getElementById("todayDate").innerHTML = "Date : " +date;
            }
    </script>
        <div class="page"style="background-color: white">
            <%
                
            %>
            <!-- Main Navbar-->
            <header class="header">
                <nav class="navbar">
                    <!-- Search Box-->
                    <div class="search-box">
                        <button class="dismiss"><i class="icon-close"></i></button>
                        <form id="searchForm" action="#" role="search">
                            <input type="search" placeholder="What are you looking for..." class="form-control">
                        </form>
                    </div>
                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between">
                            <!-- Navbar Header-->
                            <div class="navbar-header">
                                <!-- Navbar Brand --><a href="#" class="navbar-brand d-none d-sm-inline-block">
                                    <div class="brand-text d-none d-lg-inline-block mr-5"><span>Student </span><strong> Management System Reports</strong></div>
                                    <input type="button" onclick="Export()" value="Download" class="btn btn-primary">
                                    <a > </a>         
                            </div>
                             
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch" > 
                <!-- Side Navbar -->
                
                <div class="content-inner"id="canvas" style="width:100%;">
                    <!-- Page Header-->
                    <header class="page-header" style="background-color: #495057">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-4  " style="text-align: center;"><p style="font-size: 50px;font-family: serif; font-weight: bolder; color: #007bff">Lorenzo</p></div>
                                <div class="col-4"></div>                                
                            </div> 
                             <div class="row">
                                 <div class="col-4    pt-4" style="text-align: left;"><p style="font-size: 20px; color: #dae0e5"> Ratings report  </p></div> 
                                <div class="col-4  pt-4 " style="text-align: right;"><p style="font-size: 20px; color: #dae0e5"id="todayDate">  </p></div>
                                                            
                            </div>
                           
                        </div>
                    </header>
                    <section class="forms"> 
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <%
                                        Irating service = new Srating();
                                        List<Rating> list = service.getRatingList();
                                        int i=0;
                                        Double tot = 0.0;
                                    %>
                                    <table class="table  " style="width: 100%;font-size: 18px;" id="table" >
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>User id</th>
                                                            <th>Stars</th>
                                                            <th>Description</th> 
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                   <%for (Rating rating:list){
                                                       i++; 
                                                   %>
                                                   <tr> 
                                                        <td><%=i%></td>
                                                        <td><%=rating.getUserid()%></td> 
                                                         <td><%=rating.getRating()%></td>  
                                                         <td><%=rating.getDescription()%></td> 
                                                   </tr>
                                                   <%}%>
                                                     
                                                    </tbody>
                                                </table>
                                </div>
                            </div>

                         
                        </div>
                    </section>


                     
                </div>
            </div>
        </div>
        <!-- JavaScript files-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"></script>
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="js/charts-home.js"></script>
        <script src="js/ajax.js" type="text/javascript"></script>
        <script src="js/sw.js" type="text/javascript"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
        <!-- Main File-->
        <script src="js/front.js"></script>
        
        <script> 
                                                            function Export() {
                                                                html2canvas(document.getElementById('canvas'), {
                                                                    onrendered: function (canvas) {
                                                                        var data = canvas.toDataURL();
//                                                                data.text
                                                                        var docDefinition = {
                                                                            content: [{ 
                                                                                    image: data,
                                                                                    width: 500,
                                                                                    pageSize: 'A4',
                                                                                    pageMargins: [ 0, 0, 0, 0 ]
                                                                                }]
                                                                        };
                                                                        pdfMake.createPdf(docDefinition).download("feedback_report.pdf");
                                                                    }
                                                                });
                                                            }
 

        </script>
    </body>
</html>

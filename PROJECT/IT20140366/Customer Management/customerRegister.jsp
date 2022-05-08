<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="color: var(--bs-light);border-color: var(--bs-orange);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Customer Register - Lorenzo</title>
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

<body>

<style>
    body  {
       background-image: url("assets/img/reg.jpg");
       background-color: #cccccc;
       background-size: cover;
       background-attachment: fixed;
     }
     </style>
    <div class="container" style="border-color: var(--bs-red);">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                     <a href="register.jsp"><div class="col" style="width: 785px;"><button class="btn btn-primary" type="button" style="height: 100%;border-radius: 0px;border-style: none;"><i class="fa fa-arrow-left"></i></button></div></a>
                   <div class="col-lg-5 d-none d-lg-flex" style="height: 700px;width: 400px;"><img src="assets/img/logo.jpg" style="width: 100%;"></div>
                   
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Create a Customer Account!</h4>
                            </div>
                            <form class="user" action="registerCustomer" method="post">
                             <label for="fname"><b>First Name</b></label>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="fName" placeholder="First Name" name="fName" style="border-radius: 0px;" required="required"></div>
                                     <label for="lname"><b>Last Name</b></label>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="lName" placeholder="Last Name" name="lname" style="border-radius: 0px;" required="required"></div>
                                </div>
                                 <label for="email"><b>Email</b></label>
                                <div class="mb-3"><input class="form-control form-control-user" type="email" id="mail" aria-describedby="emailHelp" placeholder="Email Address" name="email" style="border-radius: 0px;" required="required"></div>
                                <div class="row mb-3">
                                <label for="tel"><b>Telephone Number</b></label>
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="tel" id="tel" placeholder="Telephone Number" name="tel" inputmode="tel" style="border-radius: 0px;" required="required"></div>
                                    <div class="col-sm-6"><label class="form-label">Gender</label>
                                        <div class="form-check" style="width: 116px;padding-left: 24px;"><input class="form-check-input" type="radio" id="male" name="gender" value="male"><label class="form-check-label" for="formCheck-1">Male</label></div>
                                        <div class="form-check" style="width: 100px;"><input class="form-check-input" type="radio" id="female" name="gender" value="female"><label class="form-check-label" for="formCheck-2">Female</label></div>
                                    </div>
                                </div>
                                <div class="row mb-3" style="width: 100%;">
                                    <div class="col-12 col-sm-6 text-start mb-3 mb-sm-0" style="width: 721px;"><textarea class="form-control form-control-lg" name="address" placeholder="Address" style="height: 53.2px;font-size: 12.8px;width: 635px;border-radius: 0px;" required="required"></textarea></div>
                                </div>
                                <hr>
                                <label for="uName"><b>UserName</b></label>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="examplePasswordInput-1" placeholder="User Name" name="uName" style="border-radius: 0px;" required="required"></div>
                                    <label for="password"><b>Password</b></label>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="password" id="exampleRepeatPasswordInput" placeholder="Password" name="password" style="border-radius: 0px;" required="required"></div>
                                </div><button class="btn btn-primary d-block btn-user w-100" type="submit" style="border-radius: 0px;background: var(--bs-red);border-color: var(--bs-red);">Register Account</button>
                                <hr>
                            </form>
                            <div class="text-center"><a class="small" href="login.jsp">Already have an account? Login!</a></div>
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
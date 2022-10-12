
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
    </head>
    <body>
        <main class="d-flex align-items-center" style="height: 100vh;">
            <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card log" >
                        <div class="card-header">
                            <h3>Sign-Up</h3>
                        </div>
                        <div class="card-body container">
                            <form action="signup_details" method="post" id="su">
                                First Name<br><input type="text" name="firstname" class="form-control" placeholder="Enter first name"><br>
                                Last name<br><input type="text" name="lastname" class="form-control" placeholder="Enter last name"><br>
                               
                                Email Id<br><input type="email" name="email" class="form-control" placeholder="Enter emailid"><br>
                                Set Password<br><input type="password" name="password" class="form-control" placeholder="Enter password">
                                <br>
                                Are you an<br>
                                <input type="radio" name="role" value="Organizer" style="margin: 5px;padding: 5px;">Organizer
                                <input type="radio" name="role" value="Student" style="margin: 5px;padding: 5px;">Student<br>
                                
                                <div class="container text-center" id="loader" style="display:none;">
                                <span class="fa fa-refresh fa-spin fa-4x"></span>
                                <h3>Please Wait</h3>
                            </div>
                                <button type="submit" class="btn btn-outline-primary" style="margin: 5px" id="submit-id">Sign-Up</button>
                                <h3 style="display: none;" id="success"></h3>
                            </form>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </main>

        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    </body>
</html>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CareHand</title>
    <link rel="icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <!-- magnific popup CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- nice select CSS -->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!--::header part start::-->
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.php"> <img src="img/favicon.png" alt="logo"> </a><h3><font color="#fff">CareHand</font></h3>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="ti-menu"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.php"> <span class="ti-home"></span> Home</a>
                                </li>
                                
                                

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Donate
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                        <a class="dropdown-item" href="donate.php">Donate To Charity</a>
                                    </div>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="EmergencyNo.php">Emergency Numbers</a>
                                </li>
                               
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->
<!-- intro_video_bg start-->
<style type="text/css">
        .intro_video_bg 
        {
        height: 200px;
        }
    </style>
    <section class="intro_video_bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="intro_video_iner text-center">
                        <h2>Contact us</h2>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- intro_video_bg part start-->
    

   

    <!--::our  part end::-->

    <section class="contact-section section_padding">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2 class="contact-title">Get in Touch</h2>
        </div>
        <div class="col-lg-8">
            <form method="post">
                <div>
                    <input type="text" name="subject" placeholder="Enter Subject" style="width: 100%;height: 50px;" required>
                </div><br>
                <div>
                    <textarea cols="30" rows="9" placeholder="Enter Message" style="width: 100%;resize: none;" required name="message"></textarea>
                </div><br>
                <div>
                    <input type="text" name="name" placeholder="Enter Your name" required style="width: 49%;height: 50px;">&nbsp;&nbsp;&nbsp;<input type="email" name="email" placeholder="Enter email address" required style="width: 49%;height: 50px;">
                </div><br>
                <div >
                    <button type="submit" name="send" class="button button-contactForm btn_1" >SEND MESSAGE  <i class="flaticon-right-arrow"></i></button>
                </div>
            </form>
            <?php
            $db = mysqli_connect('localhost', 'root', '', 'carehand');
            if(isset($_POST['send']))
            {
                $subject=mysqli_real_escape_string($db, $_POST['subject']);
                $message=mysqli_real_escape_string($db, $_POST['message']);
                $name=mysqli_real_escape_string($db, $_POST['name']);
                $email=mysqli_real_escape_string($db, $_POST['email']);
                $date=date("Y-m-d");
        
                $sql="INSERT INTO feedback (subject,message,name,email,date) VALUES ('$subject','$message','$name','$email','$date') ";
                mysqli_query($db,$sql);

                echo "Message Send Successfully.";
            }  

  ?>


        </div>
      </div>
    </div>
  </section>



    <!--::our  part end::-->

     <!-- feature_part start-->
    <section class="feature_part">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8">
                    <div class="section_tittle text-center">
                        <p>BCA Students</p>
                        <h2>Project Team</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-5 col-sm-6">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <div class=" d-flex align-items-center">
                                <img src="img/icon/feature_2.svg" alt="">
                                <h4>Krishnajith</h4>
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-sm-6">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <div class=" d-flex align-items-center">
                                <img src="img/icon/feature_2.svg" alt="">
                                <h4>Akshay</h4>
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-sm-6">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <div class=" d-flex align-items-center">
                                <img src="img/icon/feature_2.svg" alt="">
                                <h4>Zahid</h4>
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-sm-6">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <div class=" d-flex align-items-center">
                                <img src="img/icon/feature_2.svg" alt="">
                                <h4>Vishnu</h4>
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- feature_part start-->

   <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-4 col-xl-3">
                    <div class="single-footer-widget footer_1">
                        <a href="index.php"> <img src="img/favicon.png" alt=""> </a><font color="#fff">CareHand</font>
                        <p>A webportal which helps the peoples to easily
                        find out where the relief centers are placed,and donate requirements they needed.They can register as a volunteer.
                            </p>
                    </div>
                </div>
               
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Contact us</h4>
                        <p>D3 BCA ,St Mary's College, Sulthan Bathery,Wayanad,Kerala</p>
                        <div class="contact_info">
                            <p><span class="ti-mobile"></span> +91 9567834429</p>
                            <p><span class="ti-email"></span>reliefproject@gmail.com </p>
                            <p><span class="ti-world"></span>reliefcell.com </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="footer-text m-0">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->
    
    <!-- jquery plugins here-->

    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.smooth-scroll.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- swiper js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
     <!-- contact js -->
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/contact.js"></script>
   
    <!-- custom js -->
    <script src="js/custom.js"></script>  
</body>

</html>
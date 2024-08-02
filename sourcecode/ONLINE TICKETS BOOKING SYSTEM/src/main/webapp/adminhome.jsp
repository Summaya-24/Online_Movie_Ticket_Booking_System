<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
</head>
<body class="elements-page" >
 <%@include file="adminheader.jsp"%>
		 <div class="adminhome-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title" style="color: darkwhite;">Home</h1>

                        
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->
	  <div class="main-content">
        <div class="container">
            <div class="entry-header">
                <div class="entry-title">
                    <p>JUST THE BEST</p>
                    <h2>A few words about us</h2><br>
                </div><!-- -->
            </div><!-- -->

            <div class="entry-content">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="entry-header">
                            <h3 style="color:gray">We love our public</h3>
                        </div><!-- -->

                        <div style="color:gray" class="entry-description">
                            <p>We are an online platform  providing  ticketing services for movies, events, plays, concerts, and sports across various cities in India.
                             Users can browse through a wide range of entertainment options, check show timings, book tickets, and even avail of special offers and discounts. 
                             The website also features reviews, trailers, and information about upcoming events, making it a comprehensive hub for entertainment enthusiasts. 
                             Additionally, We are going to offer a convenient mobile app for seamless booking on the go, enhancing the overall user experience and accessibility to entertainment options.</p>
                        </div><!-- entry-description -->
                    </div><!-- col-6 -->

                    </div><!-- row -->
            </div><!-- entry-content -->

            <figure class="featured-image">
                <img src="images/a.jpg" alt="party people">
            </figure>
        </div><!-- container -->
    </div><!-- main-content -->
    
     <div class="container">
        <div class="milestones">
            <div class="row flex flex-wrap justify-content-between">
                <div class="d-col-n mt-5 mt-lg-0">
                    <div class="counter-box">
                        <div class="flex justify-content-center">
                            <div class="start-counter" data-to="390" data-speed="2000"></div>
                        </div>

                        <h3 class="entry-title">Running Movies</h3><!-- entry-title -->
                    </div><!-- counter-box -->
                </div><!-- d-col-n -->

               
                <div class="d-col-n mt-5 mt-lg-0">
                    <div class="counter-box">
                        <div class="flex justify-content-center">
                            <div class="start-counter" data-to="120" data-speed="2000"></div>
                            <div class="counter-k">K</div>
                        </div>

                        <h3 class="entry-title">Bookings per Hour</h3><!-- entry-title -->
                    </div><!-- counter-box -->
                </div><!-- d-col-n -->

                
                <div class="d-col-n mt-5 mt-lg-0">
                    <div class="counter-box">
                        <div class="flex justify-content-center">
                            <div class="start-counter" data-to="325" data-speed="2000"></div>
                            <div class="counter-k">K</div>
                        </div>

                        <h3 class="entry-title">Visitors</h3><!-- entry-title -->
                    </div><!-- counter-box -->
                </div><!-- d-col-n -->
            </div>
        </div>
    </div>
    
     <div class="testimonial-wrap flex flex-wrap align-self-stretch">
        <div class="testimonials-container">
            <div class="swiper-container testimonials-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="testimonial-content-wrap flex flex-wrap align-items-stretch">
                            <figure class="user-avatar">
                                <img src="images/summy.jpg" style="height:100%;width:100%" alt="">
                            </figure><!-- .user-thumbnail -->

                            <div class="testimonial-content">
                                <header class="entry-header">
                                    <h2 class="entry-title">We love Ticket booking</h2>
                                </header><!-- .entry-header -->

                                <div class="entry-content">
                                    <p>Booking movies online through this platforms has been an absolute game-changer for me.
                                     The convenience of browsing through a variety of movies, checking showtimes, 
                                    and booking tickets with just a few clicks has made moviegoing a stress-free experience.
                                     I appreciate how intuitive the website is, making it easy to navigate and find exactly what I'm looking for. 
                                     The ability to select seats in advance ensures I always get my preferred spot, and the seamless payment process adds to the overall efficiency.
                                      BookMyShow has definitely set the bar high with their user-friendly interface and comprehensive range of entertainment options.</p>
                                </div><!-- .entry-content -->

                                <footer class="entry-footer">
                                    <a href="#">Sumaiyya Rafik, Participant</a>
                                </footer><!-- .entry-footer -->
                            </div><!-- .testimonial-content -->
                        </div><!-- .testimonial-content-wrap -->
                    </div><!-- .swiper-slide -->

                    <div class="swiper-slide">
                        <div class="testimonial-content-wrap flex">
                            <figure class="user-avatar">
                                <img src="images/cherry.jpg"  style="height:100%;width:100%" alt="">
                            </figure><!-- .user-thumbnail -->

                            <div class="testimonial-content">
                                <header class="entry-header">
                                    <h2 class="entry-title">We love Ticket Booking</h2>
                                </header><!-- .entry-header -->

                                <div class="entry-content">
                                    <p>Booking movies online with platforms this has streamlined my entertainment experience.
                                     From effortless browsing to secure payments and seat selection, it's made moviegoing a breeze. 
                                     The intuitive interface and wide selection of movies ensure there's always something to suit my taste.
                                      It's my go-to for hassle-free movie bookings every time!</p>
                                </div><!-- .entry-content -->

                                <footer class="entry-footer">
                                    <a href="#">Charan cherry, Participant</a>
                                </footer><!-- .entry-footer -->
                            </div><!-- .testimonial-content -->
                        </div><!-- .testimonial-content-wrap -->
                    </div><!-- .swiper-slide -->

                    <div class="swiper-slide">
                        <div class="testimonial-content-wrap flex">
                            <figure class="user-avatar">
                                <img src="images/testimonial-user.jpg" alt="">
                            </figure><!-- .user-thumbnail -->

                            <div class="testimonial-content">
                                <header class="entry-header">
                                    <h2 class="entry-title">We love Ticket Booking</h2>
                                </header><!-- .entry-header -->

                                <div class="entry-content">
                                    <p>Booking movies online with this Website has transformed the way I enjoy cinema.
                                     The platform's user-friendly interface and seamless booking process make it a go-to for planning movie outings with friends and family.
                                      I appreciate the convenience of being able to browse through various movies, check showtimes, and book tickets from the comfort of my home or on the go. 
                                      The ability to select seats in advance ensures a stress-free experience at the theater, and the regular updates on new releases and special offers keep me coming back.
                                     BookMyShow truly enhances the movie-watching experience with its reliability and efficiency.</p>
                                </div><!-- .entry-content -->

                                <footer class="entry-footer">
                                    <a href="#">Chinna boi, Participant</a>
                                </footer><!-- .entry-footer -->
                            </div><!-- .testimonial-content -->
                        </div><!-- .testimonial-content-wrap -->
                    </div><!-- .swiper-slide -->
                </div><!-- .swiper-wrapper -->

                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div><!-- .swiper-container -->

            <div class="swiper-button-next">
                <img src="images/button.png" alt="">
            </div><!-- .slider-button -->
        </div><!-- .testimonials-container" -->

        <div class="testimonial-featured-image">
            <img src="images/ad.jpg"style="height:100%;width:100%" alt="">
        </div>
    </div>
    
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>



</body>
</html>
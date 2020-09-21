<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.io.*,java.util.*,java.sql.*"%>

<html>

    <link rel="short icon" type="image/png" href="/static/images/favicon.ico"/>

    <head>
        <link rel="stylesheet" type="text/css" href="/static/css/css-welcome.css?version=51">
        <link rel="stylesheet" type="text/css" href="/static/css/clock.css">

    </head>
    <head>
        <script
              src="https://code.jquery.com/jquery-3.5.1.min.js"
              integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
              crossorigin="anonymous">
        </script>
        </head>

        <body>

            <div class="main-container">

                <!-- HEADER -->
                <!-- CLOCK --!>

                  <span class="digit"></span>
                  <span class="digit"></span>

                  <span class="colon"></span>

                  <span class="digit"></span>
                  <span class="digit"></span>

                  <span class="colon"></span>

                  <span class="digit"></span>
                  <span class="digit"></span>


                <header class="block">
                    <ul class="header-menu horizontal-list">
                        <li>
                            <a class="header-menu-tab" href="#1"><span class="icon entypo-cog scnd-font-color"></span>Settings</a>
                        </li>
                        <li>
                            <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>Account</a>
                        </li>
                        <li>
                            <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>Messages</a>
                            <a class="header-menu-number" href="#4">5</a>
                        </li>
                        <li>
                            <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>Favorites</a>
                        </li>
                    </ul>
                    <div class="profile-menu">
                        <p>Me<a href="#26"><span class="entypo-down-open scnd-font-color"></span></a></p>
                        <div class="profile-picture small-profile-picture">
                            <img width="40px" alt="User" src="/static/images/default-user.jpg">
                        </div>
                    </div>
                </header>



                <!-- LEFT-CONTAINER -->
                <div class="left-container container">
                    <div class="menu-box block"> <!-- MENU BOX (LEFT-CONTAINER) -->
                        <h2 class="titular">E-Services</h2>
                        <ul class="menu-box-menu">
                            <li>
                                <a class="menu-box-tab" href="http://localhost:8080/user/live_station"><span class="icon entypo-chart-line scnd-font-color"></span>Live Station<div class="menu-box-number"></div></a>
                            </li>
                            <li>
                                <a class="menu-box-tab" href="http://localhost:8080/user/train_between_stations"><span class="icon entypo-calendar scnd-font-color"></span>Train Between Stations<div class="menu-box-number"></div></a>
                            </li>

                        </ul>
                    </div>


                    <div class="donut-chart-block block"> <!-- DONUT CHART BLOCK (LEFT-CONTAINER) -->
                        <h2 class="titular">INDIAN AUDIENCE STATS</h2>
                        <div class="donut-chart">

                            <div id="porcion1" class="recorte"><div class="quesito ios" data-rel="60"></div></div>
                            <div id="porcion2" class="recorte"><div class="quesito mac" data-rel="39"></div></div>
                            <div id="porcion3" class="recorte"><div class="quesito win" data-rel="1"></div></div>
                            <div id="porcionFin" class="recorte"><div class="quesito linux" data-rel="9"></div></div>
                            <!-- END DONUT-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                            <p class="center-date">JUNE<br><span class="scnd-font-color">2020</span></p>
                        </div>
                        <ul class="os-percentages horizontal-list">
                            <li>
                                <p class="ios os scnd-font-color">Water</p>
                                <p class="os-percentage">8<sup>%</sup></p>
                            </li>
                            <li>
                                <p class="mac os scnd-font-color">Road</p>
                                <p class="os-percentage">59<sup>%</sup></p>
                            </li>
                            <li>
                                <p class="linux os scnd-font-color">Air</p>
                                <p class="os-percentage">1<sup>%</sup></p>
                            </li>
                            <li>
                                <p class="win os scnd-font-color">Railways</p>
                                <p class="os-percentage">31<sup>%</sup></p>
                            </li>
                        </ul>
                    </div>

                </div>





                <!-- MIDDLE-CONTAINER -->
                <div class="middle-container container">
                    <div class="profile block">
                        <a class="add-button" href="#28"><span class="icon entypo-plus scnd-font-color"></span></a>
                        <div class="profile-picture big-profile-picture clear">
                            <img width="150px" alt="Indian Railways" src="/static/images/logo.png" >
                        </div>
                        <h1 class="user-name">INDIAN RAILWAYS</h1>
                        <div class="profile-description">
                            <p class="scnd-font-color">Lifeline of the Nation...</p>
                        </div>
                    </div>


                    <div class="weather block clear" style="height: 200;"> <!-- WEATHER (MIDDLE-CONTAINER) -->
                        <h2 class="titular"><span class="icon entypo-location"></span><strong>${LOCATION.city}</strong></h2>

                        <iframe width="300" height="150" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src=${GOOGLELOCATION.linkForLocation}></iframe> <a href='https://www.add-map.net/'>google map on my website</a> <script type='text/javascript' src='https://maps-generator.com/google-maps-authorization/script.js?id=03498a0242799ce6c55a852549bfa9e9d74e474a'></script>
                    </div>


                    <div class="tweets block"> <!-- TWEETS (MIDDLE-CONTAINER) -->
                        <h2 class="titular">LATEST NEWS</h2>

                        <c:forEach var="myNews" items="${NEWS}">

                            <div class="tweet first">
                                <p>${myNews.news}</p>
                                <p><a class="tweet-link" href=//${myNews.website} target="_blank">@ ${myNews.website}</a></p>
                                <p><a class="time-ago scnd-font-color" href="#18">${myNews.day} @ ${myNews.time}</a></p>
                            </div>

                        </c:forEach>

                    </div>

                </div>




                <!-- RIGHT-CONTAINER -->
                <div class="right-container container">
                    <div class="media block">
                        <div >
                            <iframe width="300" height="220" src="https://www.youtube.com/embed/nrnCo4aWzIg">
                            </iframe>
                        </div>
                    </div>

                    <div class="calendar-day block"> <!-- CALENDAR DAY (RIGHT-CONTAINER) -->
                        <div class="arrow-btn-container">

                            <h2 class="titular">${DATE.day}</h2>

                        </div>
                            <p class="the-day">${DATE.date}</p>
                            <a class="add-event button" href="https://calendar.google.com/calendar/u/0/r" target="_blank">ADD EVENT</a>
                    </div>

                </div> <!-- end right-container -->
            </div> <!-- end main-container -->


            <script type="text/javascript" src="/static/js/clock.js"></script>


            <script>

                function validateSignupForm(){

                    var password1 = $("#change-password1").val();
                    var password2 = $("#change-password2").val();

                    var error = "";

                    //if name is empty
                    if(!password1){
                        error += "Password is empty.";
                    }
                    if(!password2){
                        error += "Password is empty.";
                    }
                    if(password1.length <= 6){
                        error += "Password length must be greater than 6 characters."
                    }
                    if(password2.length <= 6){
                        error += "Password length must be greater than 6 characters."
                    }
                    var n = password1.localeCompare(password2);
                    if(n != 0){
                        error += "Passwords are not matching.";
                    }

                    $("#signup-error").html(error);

                    if(error.length > 0){
                        return false;
                    }

                    return true;
                }

                $("#reset-button").click(function(){

                    var isFormValid = validateSignupForm();

                    if(isFormValid){
                        $("#signup-error").hide();

                        var password1 = $("#change-password1").val();
                        var password2 = $("#change-password2").val();
                        $.ajax({
                            type: "POST",
                            url: "/user/change_password",
                            data: password1,
                            success: function(response){
                                if(!!response){

                                    window.alert(response.message);
                                    timeout : 3000;
                                    location.href = "/welcome";

                                }
                            },
                            contentType: 'application/json'
                        });
                    }else{
                        $("#signup-error").show();

                    }

                });


            </script>

        </body>


</html>
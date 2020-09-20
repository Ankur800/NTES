<html>

    <link rel="short icon" type="image/png" href="/static/images/favicon.ico"/>

    <head>
        <link rel="stylesheet" type="text/css" href="/static/css/css-welcome.css">
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
                        <p>Me <a href="#26"><span class="entypo-down-open scnd-font-color"></span></a></p>
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
                    <div class="line-chart-block block clear"> <!-- LINE CHART BLOCK (LEFT-CONTAINER) -->
                        <div class="line-chart">
                          <!-- LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                            <div class='grafico'>
                               <ul class='eje-y'>
                                 <li data-ejeY='70k'></li>
                                 <li data-ejeY='67k'></li>
                                 <li data-ejeY='63k'></li>
                                 <li data-ejeY='60k'></li>
                               </ul>
                               <ul class='eje-x'>
                                 <li>2008</li>
                                 <li>2015</li>
                                 <li>2018</li>
                               </ul>
                                 <span data-valor='20'>
                                   <span data-valor='9'>
                                     <span data-valor='13'>
                                       <span data-valor='5'>
                                         <span data-valor='23'>
                                         <span data-valor='12'>
                                             <span data-valor='15'>
                                             </span></span></span></span></span></span></span>
                            </div>
                            <!-- END LINE-CHART by @kseso https://codepen.io/Kseso/pen/phiyL -->
                        </div>
                        <ul class="time-lenght horizontal-list">
                            <p style = "text-align:center">Growth of Rail lines (in kms)</p>

                        </ul>
                        <ul class="month-data clear">
                            <li>
                                <p>APR<span class="scnd-font-color"> 2008</span></p>
                                <p><span> </span>60k</sup></p>
                            </li>
                            <li>
                                <p>MAY<span class="scnd-font-color"> 2015</span></p>
                                <p><span> </span>66k</sup></p>
                            </li>
                            <li>
                                <p>JUN<span class="scnd-font-color"> 2018</span></p>
                                <p><span> </span>68k</sup></p>
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
                        <div class="current-day">
                            <p class="current-day-date">${TIME}</p>
                            <p id="time_zone" class="current-day-temperature" style="padding-left: 20px;"><span class="icon-cloudy"></span></p>
                        </div>


                    </div>
                    <div class="tweets block"> <!-- TWEETS (MIDDLE-CONTAINER) -->
                        <h2 class="titular"><span class="icon zocial-twitter"></span>LATEST TWEETS</h2>
                        <div class="tweet first">
                            <p>Ice-cream trucks only play music when out of ice-cream. Well played dad. On <a class="tweet-link" href="#17">@Quora</a></p>
                            <p><a class="time-ago scnd-font-color" href="#18">3 minutes ago</a></p>
                        </div>
                        <div class="tweet">
                            <p>We are in the process of pushing out all of the new CC apps! We will tweet again once they are live <a class="tweet-link" href="#19">#CreativeCloud</a></p>
                            <p><a class="scnd-font-color" href="#20">6 hours ago</a></p>
                        </div>
                    </div>
                    <ul class="social block"> <!-- SOCIAL (MIDDLE-CONTAINER) -->
                        <li><a href="#50"><div class="facebook icon"><span class="zocial-facebook"></span></div><h2 class="facebook titular">SHARE TO FACEBOOK</h2></li></a>
                        <li><a href="#51"><div class="twitter icon"><span class="zocial-twitter"></span></div><h2 class="twitter titular">SHARE TO TWITTER</h2></li></a>
                        <li><a href="#52"><div class="googleplus icon"><span class="zocial-googleplus"></span></div><h2 class="googleplus titular">SHARE TO GOOGLE+</h2></li></a>
                    </ul>
                </div>




                <!-- RIGHT-CONTAINER -->
                <div class="right-container container">
                    <div class="media block">
                        <div >
                            <iframe width="300" height="220" src="https://www.youtube.com/embed/nrnCo4aWzIg">
                            </iframe>
                        </div>
                    </div>

                    <div class="account block"> <!-- ACCOUNT (RIGHT-CONTAINER) -->
                        <br>
                        <h2 class="titular">CHANGE YOUR PASSWORD</h2>
                        <div class="input-container">
                            <input id="change-password1" type="password" placeholder="new password" class="email text-input">
                            <div class="input-icon password-icon"><span class="fontawesome-lock scnd-font-color"></span></div>
                        </div>
                        <div class="input-container">
                            <input id="change-password2" type="password" placeholder="confirm new password" class="password text-input" style="">
                            <div class="input-icon password-icon"><span class="fontawesome-lock scnd-font-color"></span></div>
                        </div>
                        <a id="reset-button" class="sign-in button" href="#22">Reset Password</a>
                        <b><p style = "color:red; display:none; font-size:15px" id = "signup-error"></p></b>

                    </div>
                    <div class="loading block"> <!-- LOADING (RIGHT-CONTAINER) -->
                        <div class="progress-bar downloading"></div>
                        <p><span class="icon fontawesome-cloud-download scnd-font-color"></span>Downloading...</p>
                        <p class="percentage">81<sup>%</sup></p>
                        <div class="progress-bar uploading"></div>
                        <p><span class="icon fontawesome-cloud-upload scnd-font-color"></span>Uploading...</p>
                        <p class="percentage">43<sup>%</sup></p>
                    </div>
                    <div class="calendar-day block"> <!-- CALENDAR DAY (RIGHT-CONTAINER) -->
                        <div class="arrow-btn-container">
                            <a class="arrow-btn left" href="#200"><span class="icon fontawesome-angle-left"></span></a>
                            <h2 class="titular">WEDNESDAY</h2>
                            <a class="arrow-btn right" href="#201"><span class="icon fontawesome-angle-right"></span></a>
                        </div>
                            <p class="the-day">26</p>
                            <a class="add-event button" href="#27">ADD EVENT</a>
                    </div>
                    <div class="calendar-month block"> <!-- CALENDAR MONTH (RIGHT-CONTAINER) -->
                        <div class="arrow-btn-container">
                            <a class="arrow-btn left" href="#202"><span class="icon fontawesome-angle-left"></span></a>
                            <h2 class="titular">APRIL 2013</h2>
                            <a class="arrow-btn right" href="#203"><span class="icon fontawesome-angle-right"></span></a>
                        </div>
                        <table class="calendar">
                            <thead class="days-week">
                                <tr>
                                    <th>S</th>
                                    <th>M</th>
                                    <th>T</th>
                                    <th>W</th>
                                    <th>R</th>
                                    <th>F</th>
                                    <th>S</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><a class="scnd-font-color" href="#100">1</a></td>
                                </tr>
                                <tr>
                                    <td><a class="scnd-font-color" href="#101">2</a></td>
                                    <td><a class="scnd-font-color" href="#102">3</a></td>
                                    <td><a class="scnd-font-color" href="#103">4</a></td>
                                    <td><a class="scnd-font-color" href="#104">5</a></td>
                                    <td><a class="scnd-font-color" href="#105">6</a></td>
                                    <td><a class="scnd-font-color" href="#106">7</a></td>
                                    <td><a class="scnd-font-color" href="#107">8</a></td>
                                </tr>
                                <tr>
                                    <td><a class="scnd-font-color" href="#108">9</a></td>
                                    <td><a class="scnd-font-color" href="#109">10</a></td>
                                    <td><a class="scnd-font-color" href="#110">11</a></td>
                                    <td><a class="scnd-font-color" href="#111">12</a></td>
                                    <td><a class="scnd-font-color" href="#112">13</a></td>
                                    <td><a class="scnd-font-color" href="#113">14</a></td>
                                    <td><a class="scnd-font-color" href="#114">15</a></td>
                                </tr>
                                <tr>
                                    <td><a class="scnd-font-color" href="#115">16</a></td>
                                    <td><a class="scnd-font-color" href="#116">17</a></td>
                                    <td><a class="scnd-font-color" href="#117">18</a></td>
                                    <td><a class="scnd-font-color" href="#118">19</a></td>
                                    <td><a class="scnd-font-color" href="#119">20</a></td>
                                    <td><a class="scnd-font-color" href="#120">21</a></td>
                                    <td><a class="scnd-font-color" href="#121">22</a></td>
                                </tr>
                                <tr>
                                    <td><a class="scnd-font-color" href="#122">23</a></td>
                                    <td><a class="scnd-font-color" href="#123">24</a></td>
                                    <td><a class="scnd-font-color" href="#124">25</a></td>
                                    <td><a class="today" href="#125">26</a></td>
                                    <td><a href="#126">27</a></td>
                                    <td><a href="#127">28</a></td>
                                    <td><a href="#128">29</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#129">30</a></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- end calendar-month block -->
                </div> <!-- end right-container -->
            </div> <!-- end main-container -->


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

                function checkTime(i) {
                  if (i < 10) {
                    i = "0" + i;
                  }
                  return i;
                }

                function startTime() {
                  var today = new Date();
                  var h = today.getHours();
                  var m = today.getMinutes();
                  var s = today.getSeconds();
                  // add a zero in front of numbers<10
                  m = checkTime(m);
                  s = checkTime(s);
                  document.getElementById('time_zone').innerHTML = h + ":" + m + ":" + s;
                  t = setTimeout(function() {
                    startTime()
                  }, 500);
                }
                startTime();

            </script>

        </body>


</html>
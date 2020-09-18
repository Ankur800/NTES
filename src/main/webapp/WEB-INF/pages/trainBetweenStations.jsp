<html>

    <link rel="short icon" type="image/png" href="/static/images/favicon.ico"/>

    <head>
        <script
              src="https://code.jquery.com/jquery-3.5.1.min.js"
              integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
              crossorigin="anonymous">
        </script>
    </head>

    <style>

        @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
        @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

        * { box-sizing: border-box; }
        body {
          font: 16px Arial;
        }
        .autocomplete {
          /*the container must be positioned relative:*/
          position: relative;
          display: inline-block;
        }
        input {
          border: 1px solid transparent;
          background-color: #f1f1f1;
          padding: 10px;
          font-size: 16px;
        }
        input[type=text] {
          background-color: #f1f1f1;
          width: 100%;
        }
        input[type=submit] {
          background-color: DodgerBlue;
          color: #fff;
        }
        .autocomplete-items {
          position: absolute;
          border: 1px solid #d4d4d4;
          border-bottom: none;
          border-top: none;
          z-index: 99;
          /*position the autocomplete items to be the same width as the container:*/
          top: 100%;
          left: 0;
          right: 0;
        }
        .autocomplete-items div {
          padding: 10px;
          cursor: pointer;
          background-color: #fff;
          border-bottom: 1px solid #d4d4d4;
        }
        .autocomplete-items div:hover {
          /*when hovering an item:*/
          background-color: #e9e9e9;
        }
        .autocomplete-active {
          /*when navigating through the items using the arrow keys:*/
          background-color: DodgerBlue !important;
          color: #ffffff;
        }

        body {
              background-image:url(/static/images/home-background.png);
              background-attachment:fixed;
              background-repeat: no-repeat;
              background-size: cover;
              display: flex;
              align-items: center;
              justify-content: center;
              height: 90vh;
              width: 100%;
              font-family: Arial;
              font-size: 12px;
            }

        .grad{
        	position: absolute;
        	top: -20px;
        	left: -20px;
        	right: -40px;
        	bottom: -40px;
        	width: auto;
        	height: auto;
        	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
        	z-index: 1;
        	opacity: 0.7;
        }

        .description{
            float: left;
            color: #fff;
            font-family: 'Exo', sans-serif;
            font-size: 30px;
            font-weight: 500;
            width: 500
        }

        .header{
        	position: absolute;
        	top: 90px;
        	left: calc(50% - 305px);
        	z-index: 2;
        }

        .header div{
        	float: left;
        	color: #5379fa;
        	font-family: 'Exo', sans-serif;
        	font-size: 120px;
        	font-weight: 1000;
        }

        .header div span{
        	color: #fff !important;
        }

        .logo{
            position: absolute;
            top: 10px;
            left: 100px;
            height: 300px;
            width: 300px;
        }

        .login{
        	position: absolute;
        	top: calc(50% - 80px);
        	left: calc(50% - 50px);
        	height: 150px;
        	width: 350px;
        	padding: 10px;
        	z-index: 2;
        }

        .login input[type=text]{
        	width: 250px;
        	height: 40px;
        	background: transparent;
        	border: 3px solid white;
        	border-radius: 10px;
        	color: #fff;
        	font-family: 'Exo', sans-serif;
        	font-size: 16px;
        	font-weight: 400;
        	padding: 4px;
        }

        .login input[type=password]{
        	width: 250px;
        	height: 40px;
        	background: transparent;
        	border: 3px solid white;
        	border-radius: 10px;
        	color: #fff;
        	font-family: 'Exo', sans-serif;
        	font-size: 16px;
        	font-weight: 400;
        	padding: 4px;
        	margin-top: 10px;
        }

        .login input[type=button]{
        	width: 250px;
        	height: 35px;
        	background: #f1c40f;
        	border: 1px solid #fff;
        	cursor: pointer;
        	border-radius: 10px;
        	color: #fff;
        	font-family: 'Exo', sans-serif;
        	font-size: 16px;
        	font-weight: 1000;
        	padding: 6px;
        	margin-top: 10px;
        }

        .login input[type=button]:hover{
        	opacity: 0.8;
        }

        .login input[type=button]:active{
        	opacity: 0.6;
        }

        .login input[type=text]:focus{
        	outline: none;
        	border: 1px solid rgba(255,255,255,0.9);
        }

        .login input[type=password]:focus{
        	outline: none;
        	border: 1px solid rgba(255,255,255,0.9);
        }

        .login input[type=button]:focus{
        	outline: none;
        }

        ::-webkit-input-placeholder{
           color: rgba(255,255,255,0.6);
        }

        ::-moz-input-placeholder{
           color: rgba(255,255,255,0.6);
        }

    </style>


    <body>
            <div class="grad"></div>
            <img class="logo" src="/static/images/logo.png"></images>
            <div class="header">
                <div>INDIAN<span>RAILWAYS</span></div>
            </div>
            <br>
            <div class="login">

                <p class="description">Find trains between stations</p>

                <form autocomplete="off" action="/action_page.php">
                  <div class="autocomplete" style="width:300px;">
                    <input id="source-station" type="text" name="source"                             placeholder="From"><br><br>
                    <input id="destination-station" type="text"                                      name="destination" placeholder="To"><br>
                  </div>
                </form>

                <input id="btn-findTrains" type="button" value="Find Trains">
                <b><p style = "color:red; display:none; font-size:15px" id = "fill-error"></p></b>
            </div>
    </body>

    <script type="text/javascript" src="/static/js/auto-suggestion.js"></script>

    <script>

        function validateForm(){

            var source = $("#source-station").val();
            var destination = $("#destination-station").val();

            var error = "";

            //if name is empty
            if(!source){
                error += "Please enter source station.";
            }
            if(!destination){
                error += "Please enter destination station.";
            }

            $("#signup-error").html(error);

            if(error.length > 0){
                return false;
            }

            return true;
        }

        $("#btn-findTrains").click(function(){

            var isFormValid = validateForm();

            if(isFormValid){
                $("#signup-error").hide();

                var source = $("#source-station").val();
                var destination = $("#destination-station").val();

                var journey = {

                    "source" : source,
                    "destination" : destination
                };

                $.ajax({
                    type: "POST",
                    url: "/user/query",
                    data: JSON.stringify(journey),
                    success: function(response){
                        if(!!response){
                            location.href = "/user/results";
                        }
                    },
                    contentType: 'application/json'
                });
            }else{
                $("#signup-error").show();

            }

        });


    </script>

</html>
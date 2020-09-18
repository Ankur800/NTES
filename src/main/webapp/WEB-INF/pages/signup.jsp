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

        body {
              background-image:url(/static/images/background.jpg);
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

                <input id="signup-name" type="text" placeholder="username" name="user"><br><br>
                <input id="signup-email" type="text" placeholder="email" name="email"><br>
                <input id="signup-password" type="password" placeholder="password" name="password"><br>
                <input id="btn-signup" type="button" value="Sign up">
                <b><p style = "color:red; display:none; font-size:15px" id = "signup-error"></p></b>

            </div>
    </body>

    <script>

    function validateSignupForm(){
        var name = $("#signup-name").val();
        var email = $("#signup-email").val();
        var password = $("#signup-password").val();

        var error = "";

        //if name is empty
        if(!name){
            error += "Name is empty.";
        }
        if(!email){
            error += "Email is empty.";
        }
        if(!password){
            error += "Password is empty.";
        }
        if(password.length <= 6){
            error += "Password length must be greater than 6 characters."
        }

        $("#signup-error").html(error);

        if(error.length > 0){
            return false;
        }

        return true;
    }

    $("#btn-signup").click(function(){

        var isFormValid = validateSignupForm();

        if(isFormValid){
            $("#signup-error").hide();

            var name = $("#signup-name").val();
            var email = $("#signup-email").val();
            var password = $("#signup-password").val();

            var user = {
                "name" : name,
                "email" : email,
                "password" : password
            };

            $.ajax({
                type: "POST",
                url: "/signup",
                data: JSON.stringify(user),
                success: function(response){
                    if(!!response){
                        alert(response.message);
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
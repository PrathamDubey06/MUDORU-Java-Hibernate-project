<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MUDORU | Login</title>
    <link rel="stylesheet" href="loginstyle.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
    <script>
        function loginvalidation()
        {
            var valid = true;
            var a = document.getElementById("name").value;
            var b = document.getElementById("pass").value;
            if(a == "" && b == "")
            {
                document.getElementById("name").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow: 0px 0px 15px red;";
                document.getElementById("diverror1").innerHTML="<div class='error' id='error1'>Username Can't Be Blank</div>";
                document.getElementById("pass").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror2").innerHTML="<div class='error' id='error2'>Do not leave the field Empty</div>";
                return false;
            }
            else if(a == "")
            {
                document.getElementById("name").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror1").innerHTML="<div class='error' id='error1'>Username Can't Be Blank</div>";
                return false;
            }
            else if(b == "")
            {
                document.getElementById("pass").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror2").innerHTML="<div class='error' id='error2'>Do not leave the field Empty</div>";
                return false;
            }
            /*if(b.length < 8) {  
                document.getElementById("diverror2").innerHTML="<div class='error' id='error2'>Password Should Be Greater Than 8 characters</div>";
                return false;
            }*/
            else
            {
                return true;
            }
        }
        function showPass()
        {
            const passfield = document.getElementById("pass");
            if(passfield.type == "password")
            {
                passfield.type = "text";
            }
            else
            {
                passfield.type = "password";
            }
        }
    </script>
</head>
<body>
    <img src="pic.jpg">
    <center>
        <div id="Main">
            <form method="POST" action="CheckLogin" id="loginform" onsubmit="return loginvalidation();">
                <h2 onclick="location.href='index.html'">User Login</h2>
                <input type="text" placeholder="Username" name="username" id="name"><div id="diverror1"></div><br>
                <input type="password" placeholder="Password" name="password" id="pass"><i class="material-icons" onclick="showPass();">visibility</i><div id="diverror2"></div><br>
                <ab>Remember Me </ab><input type="checkbox" id="check">
                <a href="help.html" id="help">Need Help?</a><br>
                <input type="submit" value="Log in" name="submit" id="butn" onclick="validation();"><br>
            </form>
            <ab>Not Registered Yet ? </ab><button onclick="location.href='register.jsp'" id="btn">Register</button>
        </div>
    </center>
    <script src="https://kit.fontawesome.com/d56261bbb9.js" crossorigin="anonymous"></script>
</body>
</html>

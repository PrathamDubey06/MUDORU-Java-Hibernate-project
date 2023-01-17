<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MUDORU | Register</title>
    <link rel="stylesheet" href="registerstyle.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
    <script>
        function registervalidation()
        {
            var a = document.getElementById("firstname").value;
            var b = document.getElementById("lastname").value;
            var c = document.getElementById("username");
            var d = document.getElementById("phone").value;
            var e = document.getElementById("date").value;
            var f = document.getElementById("gend").value;
            var g = document.getElementById("city").value;
            var h = document.getElementById("state").value;
            var i = document.getElementById("address").value;
            var j = document.getElementById("pass1").value;
            var k = document.getElementById("pass2").value;
            var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            if(a == "")
            {
                document.getElementById("firstname").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow: 0px 0px 15px red;";
                document.getElementById("diverror1").innerHTML="<div class='error' id='error1'>First Name Is Required !</div>";
                return false;
            }
            else if(b == "")
            {
                document.getElementById("lastname").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror1").innerHTML="<div class='error' id='error1'>Last Name Is Required !</div>";
                return false;
            }
            else if(!mailformat.test(c.value))
            {
                document.getElementById("username").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror2").innerHTML="<div class='error' id='error2'>Enter A Valid Email ID !</div>";
                return false;
            }
            else if((d.length == 10) == false) 
            {  
                document.getElementById("phone").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror3").innerHTML="<div class='error' id='error3'>Enter A Valid Mobile Number !</div>";
                return false;
            }
            else if(e == "")
            {
                document.getElementById("date").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror4").innerHTML="<div class='error' id='error4'>Please Select Your Birth Date !</div>";
                return false;
            }
            else if(f == "Select Gender")
            {
                document.getElementById("gend").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror5").innerHTML="<div class='error' id='error5'>Please Select Your Gender !</div>";
                return false;
            }
            else if(g == "")
            {
                document.getElementById("city").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror6").innerHTML="<div class='error' id='error6'>Enter Your City Of Residence !</div>";
                return false;
            }
            else if(h == "")
            {
                document.getElementById("state").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror6").innerHTML="<div class='error' id='error6'>Enter Your State Of Residence !</div>";
                return false;
            }
            else if(i == "")
            {
                document.getElementById("address").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror7").innerHTML="<div class='error' id='error7'>Your Address Is Required !</div>";
                return false;
            }
            else if(j == "")
            {
                document.getElementById("pass1").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror8").innerHTML="<div class='error' id='error8'>Enter A Password !</div>";
                return false;
            }
            else if(k == "")
            {
                document.getElementById("pass2").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror8").innerHTML="<div class='error' id='error8'>Confirm Your Entered Password !</div>";
                return false;
            }
            else if(j != k)
            {
                document.getElementById("pass1").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("pass2").style.cssText = "border: 2px solid darkred;border-radius: 20px;box-shadow:0px 0px 15px red";
                document.getElementById("diverror8").innerHTML="<div class='error' id='error8'>Passwords Do Not Match !</div>";
                return false;
            }
            else
            {
                return true;
            }
        }
        function showPass()
        {
            const passfield = document.getElementById("pass1");
            const confpassfield = document.getElementById("pass2");
            if(passfield.type == "password" || confpassfield.type == "password")
            {
                passfield.type = "text";
                confpassfield.type = "text";
            }
            else
            {
                passfield.type = "password";
                confpassfield.type = "password";
            }
        }
    </script>
</head>
<body>
    <img src="pic.jpg">
    <center>
        <div id="Main">
            <form action="SaveDetailsServlet" method="POST" onsubmit="return registervalidation();" name="registerform" id="registerform">
                <h2 onclick="location.href='register.html'">User Registration</h2>
                <input type="text" name="firstname" id="firstname" placeholder="First Name"><div id="diverror1" style="display: inline;"></div>
                <input type="text" name="lastname" id="lastname" placeholder="Last Name"><br>
                <input type="text" placeholder="College Email" name="username" class="user" id="username"><div id="diverror2" style="display: inline;"></div><br>
                <select name="region">
                    <option>+91</option>
                    <option>+04</option>
                </select>
                <input type="phone" name="phone" id="phone" placeholder="Mobile No."><div id="diverror3" style="display: inline;"></div><br>
                <label>Birth Date : </label><input type="text" name="date" id="date"><div id="diverror4" style="display: inline;"></div><br>
                <select name="gender" id="gend">
                    <option>Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Others</option>
                </select><div id="diverror5" style="display: inline;"></div><br><br>   
                <input type="text" name="city" placeholder="City" id="city">
                <input type="text" name="state" placeholder="State" id="state"><div id="diverror6" style="display: inline;"></div><br>
                <input type="text" name="address" placeholder="Address" class="user" id="address"><div id="diverror7" style="display: inline;"></div><br>
                <input type="password" placeholder="Password" name="pass1" id="pass1">
                <input type="password" placeholder="Confirm Password" name="cpassword" id="pass2"><i class="material-icons" onclick="showPass();">visibility</i><div id="diverror8" style="display: inline;"></div><br>
                <input type="submit" value="Register" name="submit" id="butn"><br>
                <ab>Already Registered ? </ab>
                <button onclick="location.href='Login.jsp'" id="btn">Login</button>
            </div>
            </form>
        </div>
    </center>
</body>
</html>
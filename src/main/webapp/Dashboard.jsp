<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
HttpSession hs=request.getSession();
String name = (String)hs.getAttribute("firstname");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">  
    
    <title>MUDORU | Home Page</title>
    <style> 
        body{
            background-image: url(space-stars.gif);
            z-index: 100;
            background-attachment: fixed;
        }
        #nav{
            font-size:25px;
            font-family:'Times New Roman', Times, serif;
            text-decoration: none;
            color: white;
            position: absolute;
            top: 40px;
            margin: 15px;
            padding: 5px;
            right: 40px;
            z-index: 1;
        }
        .phead:hover{
            transition: all 1000ms ease;
            color:darkred;
            cursor: pointer;
        }
        #pd{
            text-decoration: none;
            color: white;
        }
        #pd:hover {
            transition: all 1000ms ease;
            color:darkred;
            cursor: pointer;
        }
        .btn:hover{
            color: rgb(104, 38, 0);
        }
        .btn2:hover{
            color: rgb(104, 38, 0);
        }
        .btn{
           background-color: transparent;
           color: white;
           display: inline;
            font-weight:400;
            border: 1px transparent;
            margin: 8px;
            font-size:20px;
            transition: all;
            -webkit-transition: all 300ms linear;
            -moz-transition: all 300ms linear;
            -o-transition: all 300ms linear;
            -ms-transition: all 300ms linear;
        }
         .btn2{
           background-color: transparent;
           color: white;
           display: inline;
            font-weight:400;
            border: 1px transparent;
            margin: 8px;
            font-size:20px;
             margin-left: 40px;
             margin-right: 40px;
            transition: all;
            -webkit-transition: all 300ms linear;
            -moz-transition: all 300ms linear;
            -o-transition: all 300ms linear;
            -ms-transition: all 300ms linear;
        }
        .dropbtn {
            background-color: transparent;
            color: white;
            padding: 16px;
            font-size: 20px;
            border: 1px transparent;
            cursor: pointer;

            }

            .dropdown-content {
            display: none;
            font-size: 12px;
            position: absolute;
            background-color: rgba(0, 0, 0, 0.678);
            min-width: 200px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            
            }

            .dropdown-content a {
            color:rgb(255, 255, 255);
            padding: 10px 0px;
            text-decoration: none;
            display:block;
            font-size: 15px;
            font-weight: lighter;
            font-family: sans-serif;
            
            }

            .dropdown-content a:hover {
                color:rgb(151, 59, 5);
            }

            .dropdown:hover .dropdown-content {
            display: block;
            }

            .dropdown:hover .dropbtn{
            background-color: transparent;
            }
        .dropdown {
            margin-left:10px;
            font-size: 20px;
            padding:0px;
            position: absolute;
            top:13px;
            left:95px;
            font-family:'Times New Roman', Times, serif;
        }
        #logo{
            position: absolute;
            width: 300px;
            top: 45px;
            left:10px;
            z-index: 1;
        }
        button{
            font-family:sans-serif;
        }
        .bgimg{
            position: absolute;
            top: 25%;
            width: 25%;
            height: 50%;
            filter: brightness(50%);
        }
        #sec1{
            display: block;
            width: 90%;
            z-index: 0;
        }
        #sec2{
            display: inline;
            position: relative;
            top: 280px;
        }
        .phead{
            font-size: 30px;
            font-weight: bolder;
            font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            color: white;
            margin: 40px;
            margin-left: 42px;
            padding-left: 30px;
            display: inline;
        }
        #sec3{
            display: inline;
            position: relative;
            top: 280px;
        }
        .pbot{
            font-size: 18px;
            font-weight: bolder;
            font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            color:rgb(219, 161, 0);
            margin: 40px;
            margin-left: 90px;
            padding-left: 50px;
            display: inline;
            filter: brightness(200%);
        }
    </style>
</head>
<body>
    <button disabled style="position: absolute;right: 50px;top: 10px; background-color: black;font-family: sans-serif;color: white;border: 1px solid white;font-size: 18px;vertical-align: middle;padding-bottom: 2px;">
        <i class="material-icons" style="color: white">person</i>
        &nbsp;<%=name %></button>
    <div style="border: 2px solid white;width: 190px; height: 95px; left: 25px;top: 35px; position: absolute;">
    </div>
    <img src="Final_Logo.png" style="position: absolute; left: 20px; top: 30px;height: 100px;">
    <div id="nav">
        <button class="btn" style="margin-right: 80px;">HOME</button>
        <div class="dropdown">
            <button class="dropbtn btn" style="margin: 0px;padding:0px;background-color: transparent; border: 1 px transparent;">RESULTS</button>
            <div class="dropdown-content">
                <a href="#" style="margin-top: 5px;">MST I</a>
                <a href="#">MST II</a>
                <a href="#">MST III</a>
                <a href="#">END SEM</a>
            </div>
        </div>
        <a href="https://www.google.com/maps/dir/24.9091868,79.5800616/symbiosis+indore/@24.0889408,75.4496664,7z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x396301e559b7cfa7:0xfa2da74cc5756c01!2m2!1d75.7952192!2d22.7525233" target="_blank" style="text-decoration: none;"><button class="btn" style="padding-left: 50px;">LOCATE US</button></a>
        <button class="btn">LOGOUT</button>
    </div>
    <a href="Introduction.html" target="_blank" ></a>

    <section id="sec1">
        <img src="personal2-removebg-preview.png" class="bgimg" style="left: 5px;">
        <img src="attendance-removebg-preview.png" class="bgimg" style="left: 395px;top: 22%;">
        <img src="academic-removebg-preview.png" class="bgimg" style="left:785px;">
        <img src="ass-removebg-preview.png" class="bgimg" style="left: 1170px;width: 23%;top: 27%;">
    </section>  
    <section id="sec2">
        <p class="phead"><a class="pd" id="pd" href="Personal_Details.jsp" target="_blank">PERSONAL DETAILS</a></p>
        <p class="phead" style="padding-left: 40px;">ATTENDANCE</p>
        <p class="phead" style="margin-left: 80px;">ACADEMIC DETAILS</p>
        <p class="phead" style="margin-left: 30px;">ASSIGNMENTS</p>
    </section>
    <section id="sec3">
        <p class="pbot">All About You</p>
        <p class="pbot" style="margin-left: 120px;">Do You Fulfil The Criteria?</p>
        <p class="pbot" style="margin-left: 115px;">The Scariest One</p>
        <p class="pbot" style="margin-left: 95px;">Gonna Take Forever</p>
    </section>
    <div id="nav" style="position: absolute;top: 660px; left: 280px;">
        <button class="btn2" style="margin-right: 80px;">FAQ</button>
        <button class="btn2">CONTACT US</button>
        <button class="btn2">TERM OF USE</button>
        <button class="btn2">&copy;2021 | SUAS Helpdesk</button>
    </div>
</body>
</html>